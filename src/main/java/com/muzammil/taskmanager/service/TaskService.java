package com.muzammil.taskmanager.service;

import com.muzammil.taskmanager.dao.TaskDao;
import com.muzammil.taskmanager.model.Task;
import com.muzammil.taskmanager.model.User;
import jakarta.servlet.http.HttpSession;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TaskService {

    TaskDao taskDao;

    public TaskService(TaskDao taskDao) {
        this.taskDao = taskDao;
    }

    public void  addTask(Task task){

        taskDao.save(task);
    }

    public void updateTask(Task updatedTask, HttpSession session) {
        Task existingTask = taskDao.findById(updatedTask.getId());
        if (existingTask == null) {
            throw new IllegalArgumentException("Task not found.");
        }

        User loggedInUser = (User) session.getAttribute("loggedInUser");
        if (loggedInUser == null || ! (existingTask.getUser().getId() == loggedInUser.getId())){
            throw new SecurityException("Unauthorized update attempt.");
        }

        // Update only allowed fields
        existingTask.setTitle(updatedTask.getTitle());
        existingTask.setDescription(updatedTask.getDescription());
        existingTask.setUser(loggedInUser);
        existingTask.setCompleted(updatedTask.isCompleted());

        taskDao.update(existingTask);
    }


    public void deleteTask(int id, HttpSession session) {
        Task existingTask = taskDao.findById(id);
        if (existingTask == null) {
            throw new IllegalArgumentException("Task not found.");
        }

        User user = (User) session.getAttribute("loggedInUser");
        if (user == null || !(existingTask.getUser().getId() == user.getId())) {
            throw new SecurityException("Unauthorized deletion attempt.");
        }

        taskDao.delete(existingTask);
    }


    public List<Task> findByUser(User user) {

        return taskDao.findByUserId(user.getId());
    }

    public Task findById(int id, HttpSession session) {
        Task task = taskDao.findById(id);
        if (task == null) {
            throw new IllegalArgumentException("Task not found.");
        }

        User user = (User) session.getAttribute("loggedInUser");
        if (user == null || !(task.getUser().getId() == user.getId())) {
            throw new SecurityException("Unauthorized access.");
        }

        return task;
    }

}
