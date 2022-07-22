package org.kustova.refrigerators.service;


import org.kustova.refrigerators.entity.User;

import java.util.List;

public interface UserService {
    User findByUsername(String name);

    User findById(Integer id);

    void saveUser(User user);
    List<User> findAllUsers();
    void deleteOperator(Integer id);
}
