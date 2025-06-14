package com.muzammil.taskmanager.dao;

import com.muzammil.taskmanager.model.User;
import jakarta.persistence.TypedQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {

    private SessionFactory sessionFactory;

    public UserDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    private Session getSession() {
        return sessionFactory.getCurrentSession();
    }

    public void save(User user) {
        getSession().persist(user);
    }
    public void delete (User user) {
        getSession().remove(user);
    }

    public User findById(int id) {
        return  getSession().find(User.class, id);
    }
    public User findByEmail(String email) {
        String hql = "FROM User WHERE email = :email";
        TypedQuery<User> query = getSession().createQuery(hql, User.class);
        query.setParameter("email", email);
        return query.getSingleResultOrNull();
    }
}
