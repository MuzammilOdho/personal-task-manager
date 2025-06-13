package com.muzammil.taskmanager.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/auth")
@Controller
public class SignupController {

    @RequestMapping("/signup")
    public String showSignupForm(){
        return "signup";
    }

    
}
