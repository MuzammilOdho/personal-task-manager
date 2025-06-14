package com.muzammil.taskmanager.controller;

import com.muzammil.taskmanager.model.User;
import com.muzammil.taskmanager.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/auth")
public class AuthController {

    @Autowired
    private UserService userService;

    // Show Signup Page
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    // Handle Signup Form Submission
    @PostMapping("/signup")
    public String processSignup(@ModelAttribute("user") User user, Model model) {
        if (userService.findUserByEmail(user.getEmail()) != null) {
            model.addAttribute("error", "Email already registered!");
            return "signup";
        }
        userService.saveUser(user);
        return "redirect:/auth/login";
    }

    // Show Login Page
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login"; // login.jsp
    }

    // Handle Login Form Submission
    @PostMapping("/login")
    public String processLogin(@ModelAttribute("user") User user, HttpSession session, Model model) {
        User existing = userService.findUserByEmail(user.getEmail());
        if (existing != null && existing.getPassword().equals(user.getPassword())) {
            session.setAttribute("loggedInUser", existing);
            return "redirect:/tasks"; // or wherever
        } else {
            model.addAttribute("error", "Invalid credentials!");
            return "login";
        }
    }

    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/auth/login";
    }
}
