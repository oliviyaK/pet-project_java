package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.Entity.Role;
import org.kustova.refrigerators.Entity.User;
import org.kustova.refrigerators.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(URL_REGISTRATION)
@RequiredArgsConstructor
public class RegistrationController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;

    @GetMapping
    public String newUser(User user, Model model) {
        model.addAttribute(USER, user);
        return REGISTRATION;
    }

    @PostMapping
    public String addUser(User user, Model model) {
        if (userService.findByUsername(user.getUsername()) != null) {
            model.addAttribute(ERROR, ERROR);
            return REGISTRATION;
        } else {
            user.setActive(true);
            user.setRoles(Collections.singleton(Role.USER));
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userService.saveUser(user);
        }
        return REDIRECT_URL_ADMIN;
    }
}
