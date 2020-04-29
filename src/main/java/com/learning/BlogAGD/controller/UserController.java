package com.learning.BlogAGD.controller;

import com.learning.BlogAGD.domain.Role;
import com.learning.BlogAGD.domain.User;
import com.learning.BlogAGD.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller

@RequestMapping("/user") // при get запросе к текущему мету пусть будет сожерадть user

public class UserController {
    @Autowired
    private UserService userService;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userService.findAll());

        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(
            @PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "userEdit";
    }


    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {
        userService.saveUser(user, username, form);

        return "redirect:/user";
    }

    @GetMapping("profile")
    public String getProfile(Model model,
                             @AuthenticationPrincipal User user) {
        model.addAttribute("username", user.getUsername());
        model.addAttribute("fistName", user.getFistName());
        model.addAttribute("lastName", user.getLastName());
        model.addAttribute("email", user.getEmail());
        model.addAttribute("password", user.getPassword());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password,
            @RequestParam String fistName,
            @RequestParam String lastName,
            @RequestParam String email){
        userService.updateProfile(user, password, fistName, lastName, email);
        return "redirect:/user/profile";
    }

    @GetMapping("user/delete/{id}")
    public String deleteUser(@PathVariable User id) {
        userService.deleteUser(id);
        return "redirect:/user";

    }
}