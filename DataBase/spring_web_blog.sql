-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 10, 2023 at 11:32 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spring_web_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` bigint(20) NOT NULL,
  `anons` varchar(255) DEFAULT NULL,
  `text` longtext,
  `title` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `anons`, `text`, `title`, `views`) VALUES
(152, 'Best post', 'Text of the first post.', 'Post No.1', 0),
(202, 'Best Post No.2', 'Text of Post No.2', 'Post No.2', 0),
(302, 'Let these wise words push you to eat healthily and get a fit body and mind.', 'Top 20 Healthy Food Quotes To Inspire You\r\n1. “You are what you eat, so don’t be fast, cheap, easy, or fake.” – Unknown\r\n2. “If you keep good food in your fridge, you will eat good food.” – Errick McAdams\r\n3. “By choosing healthy over skinny you are choosing self-love over self-judgement.” – Steve Maraboli\r\n4. “Your diet is a bank account. Good food choices are good investments.” – Bethenny Frankel\r\n5. “Eat breakfast like a king, lunch like a prince, and dinner like a pauper.” – Adelle Davis\r\n6. “Healthy eating is a way of life, so it’s important to establish routines that are simple, realistically, and ultimately livable.” – Horace\r\n7. “Let food be thy medicine, thy medicine shall be thy food.” – Hippocrates\r\n8. “A journey of a thousand miles begins with a single step.” – Lao Tzu\r\n9. “Take care of your body. It’s the only place you have to live.” – Jim Rohn\r\n10. “The greatest wealth is Health.” – Unknown\r\n11. “If you can’t pronounce it, don’t eat it.” – Common Sense\r\n12. “You don’t have to eat less, you just have to eat right.” – Unknown\r\n13. “An apple a day keeps the doctor away” – Proverb\r\n14. “Health is a relationship between you and your body.” – Terri Guillemets\r\n15. “The food you eat can be either the safest and most powerful form of medicine or the slowest form of poison.” – Ann Wigmore\r\n16. “A healthy outside starts from the inside.” – Robert Urich\r\n17. “What you eat in private you wear in public.” – Unknown\r\n18. “Moderation. Small helpings. Sample a little bit of everything. These are the secrets of happiness and good health.” – Julia Child\r\n19. “Any food that requires enhancing by the use of chemical substances should in no way be considered a food.” – John H. Tobe\r\n20. “Success is the sum of small efforts—repeated day-in and day-out.” – Robert Collier\r\n', 'Top 20 Healthy Food Quotes To Inspire You', 0),
(303, 'Confused by all the conflicting nutrition advice out there? These simple tips can show you how to plan, enjoy, and stick to a healthy diet.', 'ating a healthy diet is not about strict limitations, staying unrealistically thin, or depriving yourself of the foods you love. Rather, it’s about feeling great, having more energy, improving your health, and boosting your mood.\r\n\r\nHealthy eating doesn’t have to be overly complicated. If you feel overwhelmed by all the conflicting nutrition and diet advice out there, you’re not alone. It seems that for every expert who tells you a certain food is good for you, you’ll find another saying exactly the opposite. The truth is that while some specific foods or nutrients have been shown to have a beneficial effect on mood, it’s your overall dietary pattern that is most important. The cornerstone of a healthy diet should be to replace processed food with real food whenever possible. Eating food that is as close as possible to the way nature made it can make a huge difference to the way you think, look, and feel.\r\n\r\nBy using these simple tips, you can cut through the confusion and learn how to create—and stick to—a tasty, varied, and nutritious diet that is as good for your mind as it is for your body.\r\n\r\nWhile some extreme diets may suggest otherwise, we all need a balance of protein, fat, carbohydrates, fiber, vitamins, and minerals in our diets to sustain a healthy body. You don\'t need to eliminate certain categories of food from your diet, but rather select the healthiest options from each category.\r\n\r\nProtein gives you the energy to get up and go—and keep going—while also supporting mood and cognitive function. Too much protein can be harmful to people with kidney disease, but the latest research suggests that many of us need more high-quality protein, especially as we age. That doesn\'t mean you have to eat more animal products—a variety of plant-based sources of protein each day can ensure your body gets all the essential protein it needs. Learn more »\r\n\r\nFat. Not all fat is the same. While bad fats can wreck your diet and increase your risk of certain diseases, good fats protect your brain and heart. In fact, healthy fats—such as omega-3s—are vital to your physical and emotional health. Including more healthy fat in your diet can help improve your mood, boost your well-being, and even trim your waistline. Learn more »\r\n\r\nFiber. Eating foods high in dietary fiber (grains, fruit, vegetables, nuts, and beans) can help you stay regular and lower your risk for heart disease, stroke, and diabetes. It can also improve your skin and even help you to lose weight. Learn more »\r\n\r\nCalcium. As well as leading to osteoporosis, not getting enough calcium in your diet can also contribute to anxiety, depression, and sleep difficulties. Whatever your age or gender, it\'s vital to include calcium-rich foods in your diet, limit those that deplete calcium, and get enough magnesium and vitamins D and K to help calcium do its job. Learn more »\r\n\r\nCarbohydrates are one of your body\'s main sources of energy. But most should come from complex, unrefined carbs (vegetables, whole grains, fruit) rather than sugars and refined carbs. Cutting back on white bread, pastries, starches, and sugar can prevent rapid spikes in blood sugar, fluctuations in mood and energy, and a build-up of fat, especially around your waistline. ', 'Healthy Eating', 0);

-- --------------------------------------------------------

--
-- Table structure for table `post_seq`
--

CREATE TABLE `post_seq` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_seq`
--

INSERT INTO `post_seq` (`next_val`) VALUES
(401);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
