package com.muzammil.taskmanager.controller;

import com.muzammil.taskmanager.dao.TaskDao;
import com.muzammil.taskmanager.model.Task;
import com.muzammil.taskmanager.model.User;
import com.muzammil.taskmanager.service.TaskService;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    TaskService taskService;

    public TaskController(TaskService taskService) {
        this.taskService = taskService;
    }


    // Display all tasks
    @GetMapping
    public String viewTasks(Model model, HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser");
        if (user == null) {
            return "redirect:/auth/login";
        }
        model.addAttribute("tasks",  taskService.findByUser(user));
        return "task-list";
    }

    // Show add task form
    @GetMapping("/add")
    public String showAddForm(Model model, HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser");
        if (user == null) {
            return "redirect:/auth/login";
        }
        model.addAttribute("task", new Task());
        return "task-form";
    }


    // Process new task
    @PostMapping("/add")
    public String addTask(@ModelAttribute("task") Task task, HttpSession session) {
        User user =(User)session.getAttribute("loggedInUser");
        task.setUser(user);
        taskService.addTask(task);
        return "redirect:/tasks";
    }

    // Show edit task form
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model, HttpSession session) {
        User user = (User) session.getAttribute("loggedInUser");
        if (user == null) {
            return "redirect:/login";
        }
        Task task = taskService.findById(id,session);
        model.addAttribute("task", task);
        return "edit-task";
    }

    // Process task update
    @PostMapping("/update")
    public String updateTask(@ModelAttribute("task") Task updatedTask, HttpSession session) {
        taskService.updateTask(updatedTask,session);
        return "redirect:/tasks";
    }

    // Delete task
    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable("id") int id, HttpSession session) {
        taskService.deleteTask(id,session);
        return "redirect:/tasks";
    }

}
