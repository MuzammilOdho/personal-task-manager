package com.muzammil.taskmanager.controller;

import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home(HttpSession session) {
        if (session.getAttribute("user") == null) {
        return "landing";
        }
        return "redirect:/tasks";
    }

}
