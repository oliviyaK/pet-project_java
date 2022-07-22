package org.kustova.refrigerators.controller;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.entity.User;
import org.kustova.refrigerators.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/admin")
@RequiredArgsConstructor
public class AdminController {

    private final UserService userService;

    @GetMapping
    public String listUser(Model model) {
        List<User> allUsers = userService.findAllUsers();
        model.addAttribute("users", allUsers);
        return "admin";
    }
    @GetMapping("/delete")
    public String deleteOperator(@RequestParam Integer id) {
        userService.deleteOperator(id);
        return "redirect:/admin";
    }

    @GetMapping("/edit")
    public String updateOperator(@RequestParam Integer id, Model model) {
        User operator = userService.findById(id);
        model.addAttribute("operator", operator);
        return "operatorForm";
    }
}
