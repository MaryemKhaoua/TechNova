package com.technova.service;

import com.technova.bean.User;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<User> getUsers();
    Optional<User> getUserById(Long id);
    User saveUser(User user);
    User updateUser(User user);
    void deleteUser(Long id);

}
