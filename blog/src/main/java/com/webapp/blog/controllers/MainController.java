package com.webapp.blog.controllers;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MainController {


    @GetMapping("/about")
    public String about(Model model) {
        model.addAttribute("title", "Page about us");

        return "about";
    }


}
