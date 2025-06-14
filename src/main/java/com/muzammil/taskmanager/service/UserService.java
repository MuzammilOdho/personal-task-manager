package com.muzammil.taskmanager.service;

import com.muzammil.taskmanager.dao.UserDao;
import com.muzammil.taskmanager.model.User;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserService {

    UserDao userDao;

    public UserService(UserDao userDao) {
        this.userDao = userDao;
    }

    public User Authenticate(String email, String password) {
      User  user =  findUserByEmail(email);
      if(user.getPassword().equals(password)) {
          return user;
      }
      return null;
    }

    public void saveUser(User user) {
        if(userAlreadyExists(user.getEmail())){
            System.out.println("user already exists");
            return;
        }
        userDao.save(user);
    }

    public User findUserByEmail(String email){
    return userDao.findByEmail(email);
    }

    public boolean userAlreadyExists(String email){
        return userDao.findByEmail(email) != null;
    }

}
