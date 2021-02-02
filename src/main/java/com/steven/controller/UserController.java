package com.steven.controller;

import com.steven.pojo.Users;
import com.steven.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping("/tologin")
    public String tologin() {
        return "login";
    }

    @RequestMapping("login")
    public String login(String username, String password) {
        Users users = userService.checkUser(username, password);
        if (users != null) {
            return "redirect:/book/allBook";
        } else {
            return "login";
        }
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
