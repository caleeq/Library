package com.steven.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/ajax")
    @ResponseBody
    public String ajax(String name) {
        if ("hello".equals(name)) {
            return "ajax";
        } else {
            return name;
        }

    }
}
