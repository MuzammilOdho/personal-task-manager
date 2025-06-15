package com.muzammil.taskmanager.controller;

import com.muzammil.taskmanager.model.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser");
        if (user == null) {
        return "landing";
        }
        return "redirect:/tasks";
    }

}
