package com.family.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.family.entity.User;
import com.family.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User validateUser(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password);
    }
}
