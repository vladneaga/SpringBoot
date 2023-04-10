package com.webapp.blog.controllers;

import com.webapp.blog.models.Post;
import com.webapp.blog.repo.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.Optional;

@Controller
public class BlogController {

    @Autowired(required = false)
    PostRepository postRepository;
    @GetMapping("/blog")
    public String blogMain(Model model){
    Iterable<Post> posts=postRepository.findAll();
    model.addAttribute("posts",posts);

        return "blog-main";
    }

    @GetMapping("/blog/add")
    public String addBlogMain(Model model){

        model.addAttribute("post", new Post());

        return "addBlog";
    }
    @PostMapping("blog/add")
    public String blogPostAdd(Model model, @RequestParam String title, @RequestParam String anons, @RequestParam String full_text)
    {
        Post post=new Post(title, anons, full_text);
        postRepository.save(post);
        return "redirect:/blog";
    }
    @GetMapping("/blog/{id}")
    public String showDetails(Model model, @PathVariable("id") long id)
    {
        if(!postRepository.existsById(id))
        {
            return "redirect:/blog";
        }
        Optional<Post> post=postRepository.findById(id);
        ArrayList<Post> arr=new ArrayList<>();
        post.ifPresent(arr::add);

     model.addAttribute("posts", arr);


        return "details";
    }

    @GetMapping("/blog/{id}/edit")
    public String edit(Model model, @PathVariable("id") long id)
    {
        if(!postRepository.existsById(id))
        {
            return "redirect:/blog";
        }
        Optional<Post> post=postRepository.findById(id);
        ArrayList<Post> arr=new ArrayList<>();
        post.ifPresent(arr::add);

        model.addAttribute("posts", arr);


        return "edit";
    }
    @PostMapping("blog/{id}/edit")
    public String blogPostEdit(Model model, @RequestParam String title, @RequestParam String anons, @RequestParam String full_text,  @PathVariable("id") long id)
    {
      Post post=postRepository.findById(id).orElseThrow();
      post.setAnons(anons);
      post.setTitle(title);
      post.setText(full_text);
      post.setId(id);
      postRepository.deleteById(id);
      postRepository.save(post);

        return "redirect:/blog";
    }

    @GetMapping("blog/{id}/remove")
    public String remove(Model model, @PathVariable("id")long id)
    {
       postRepository.deleteById(id);
        return "redirect:/blog";


    }



}
