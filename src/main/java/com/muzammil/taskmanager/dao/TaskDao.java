package com.muzammil.taskmanager.dao;


import com.muzammil.taskmanager.model.Task;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class TaskDao {


    private SessionFactory sessionFactory;

    @Autowired
    public TaskDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public void save(Task task) {
        getSession().persist(task);
    }

    public Task findById(int id) {
        return getSession().find(Task.class, id);
    }

    public void update(Task task) {
        getSession().merge(task);
    }

    public void delete(Task task) {
        getSession().remove(task);
    }

    public List<Task> findByUserId(int userId) {
        String hql = "FROM Task t WHERE t.user.id = :userId";
        TypedQuery<Task> query = getSession().createQuery(hql, Task.class);
        query.setParameter("userId", userId);
        return query.getResultList();
    }
}
