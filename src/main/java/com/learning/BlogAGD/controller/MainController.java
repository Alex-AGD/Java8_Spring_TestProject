package com.learning.BlogAGD.controller;

import com.learning.BlogAGD.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class MainController
{
    @Autowired
    private UserRepo userRepo;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "main";
    }

    @GetMapping("/portfolio")
    public String portfolio() {
        return "portfolio";
    }



}

