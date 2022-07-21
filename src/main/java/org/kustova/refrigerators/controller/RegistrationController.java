package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.entity.Role;
import org.kustova.refrigerators.entity.User;
import org.kustova.refrigerators.service.UserService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Collections;

@Controller
@RequestMapping("/registration")
@RequiredArgsConstructor
public class RegistrationController {

    private final UserService userService;
    private final PasswordEncoder passwordEncoder;


    @GetMapping
    public String newUser(User user, Model model) {
        model.addAttribute("user", user);
        return "registration";
    }

    @PostMapping
    public String addUser(User user, Model model) {
        if (userService.findByUsername(user.getUsername()) != null) {
            model.addAttribute("error", "error");
            return "registration";
        } else {
            user.setActive(true);
            user.setRoles(Collections.singleton(Role.ADMIN));
            user.setPassword(passwordEncoder.encode(user.getPassword()));
            userService.saveUser(user);

        }
        return "redirect:/login";
    }
}
