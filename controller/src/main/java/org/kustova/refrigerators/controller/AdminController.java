package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.Entity.User;
import org.kustova.refrigerators.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.kustova.refrigerators.utils.Constants.*;

@Controller
@RequestMapping(URL_ADMIN)
@RequiredArgsConstructor
public class AdminController {

    private final UserService userService;

    @GetMapping
    public String listUser(Model model) {
        List<User> allUsers = userService.findAllUsers();
        model.addAttribute(USERS, allUsers);
        return ADMIN_STRING;
    }

    @GetMapping(URL_DELETE)
    public String deleteOperator(@RequestParam Integer id) {
        userService.deleteOperator(id);
        return REDIRECT_URL_ADMIN;
    }

    @GetMapping(URL_EDIT)
    public String updateOperator(@RequestParam Integer id, Model model) {
        User operator = userService.findById(id);
        model.addAttribute(OPERATOR, operator);
        return OPERATOR_FORM;
    }

    @PostMapping(value = URL_ADD)
    public String addUser(@ModelAttribute(OPERATOR) User user) {
        userService.saveUser(user);
        return REDIRECT_URL_ADMIN;
    }
}
