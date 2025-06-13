package com.muzammil.taskmanager.controller;

import com.muzammil.taskmanager.model.Task;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;
import java.util.concurrent.atomic.AtomicInteger;

@Controller
@RequestMapping("/tasks")
public class TaskController {

    private List<Task> taskList = new ArrayList<>();
    private AtomicInteger idCounter = new AtomicInteger();

    // Display all tasks
    @GetMapping
    public String viewTasks(Model model) {
        model.addAttribute("tasks", taskList);
        return "todo-list";
    }

    // Show add task form
    @GetMapping("/add")
    public String showAddForm(Model model) {
        model.addAttribute("task", new Task());
        return "add-todo";
    }

    // Process new task
    @PostMapping("/add")
    public String addTask(@ModelAttribute("task") Task task) {
        task.setId(idCounter.incrementAndGet());
//        task.setCreatedAt(new DateTime());
        taskList.add(task);
        return "redirect:/tasks";
    }

    // Show edit task form
    @GetMapping("/edit/{id}")
    public String showEditForm(@PathVariable("id") int id, Model model) {
        Task task = findTaskById(id);
        if (task != null) {
            model.addAttribute("task", task);
            return "task-form";
        }
        return "redirect:/tasks";
    }

    // Process task update
    @PostMapping("/update")
    public String updateTask(@ModelAttribute("task") Task updatedTask) {
        Task existing = findTaskById(updatedTask.getId());
        if (existing != null) {
            existing.setTitle(updatedTask.getTitle());
            existing.setDescription(updatedTask.getDescription());
        }
        return "redirect:/tasks";
    }

    // Delete task
    @GetMapping("/delete/{id}")
    public String deleteTask(@PathVariable("id") int id) {
        taskList.removeIf(t -> t.getId() == id);
        return "redirect:/tasks";
    }

    // Helper
    private Task findTaskById(int id) {
        return taskList.stream()
                .filter(t -> t.getId() == id)
                .findFirst()
                .orElse(null);
    }
}
