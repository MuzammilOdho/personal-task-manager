package com.muzammil.taskmanager.controller;

import com.muzammil.taskmanager.model.User;
import com.muzammil.taskmanager.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/auth")
public class AuthController {

    private final UserService userService;

    public AuthController(UserService userService) {
        this.userService = userService;
    }

    // Show Signup Page
    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    // Handle Signup Form Submission
    @PostMapping("/signup")
    public String processSignup(@ModelAttribute("user") User user,
                                RedirectAttributes redirectAttributes) {
        if (userService.findUserByEmail(user.getEmail()) != null) {
            redirectAttributes.addFlashAttribute("errorMessage", "❌ Email is already registered!");
            return "redirect:/auth/signup";
        }

        userService.saveUser(user);
        redirectAttributes.addFlashAttribute("successMessage", "🎉 Signup successful! Please login.");
        return "redirect:/auth/login";
    }

    // Show Login Page
    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("user", new User());
        return "login";
    }

    // Handle Login Form Submission
    @PostMapping("/login")
    public String processLogin(@ModelAttribute("user") User user,
                               HttpSession session,
                               RedirectAttributes redirectAttributes) {
        User existing = userService.findUserByEmail(user.getEmail());

        if (existing != null && existing.getPassword().equals(user.getPassword())) {
            session.setAttribute("loggedInUser", existing);
            return "redirect:/tasks";
        } else {
            redirectAttributes.addFlashAttribute("errorMessage", "⚠️ Invalid email or password.");
            return "redirect:/auth/login";
        }
    }

    // Logout
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/auth/login";
    }
}
