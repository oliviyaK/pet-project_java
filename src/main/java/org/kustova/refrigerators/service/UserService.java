package org.kustova.refrigerators.service;


import org.kustova.refrigerators.entity.User;

public interface UserService {
    User findByUsername(String name);

    User findById(Integer id);

    User saveUser(User user);
}
