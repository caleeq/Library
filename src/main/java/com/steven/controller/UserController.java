package com.steven.controller;

import com.steven.pojo.Users;
import com.steven.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    @Qualifier("userServiceImpl")
    private UserService userService;

    @RequestMapping("/toLogin")
    public String toLogin() {
        return "login";
    }

    @RequestMapping("/login")
    public String login(String username, String password, RedirectAttributes attributes, Model model) {
        Users users = userService.checkUser(username, password);
        if (users != null) {
            attributes.addFlashAttribute("username", username);
            return "redirect:/book/allBook";
        } else {
            String msg = "Invalid username or password";
            model.addAttribute("msg", msg);
            return "login";
        }
    }

    @RequestMapping("/toSignup")
    public String toSignup() {
        return "signup";
    }

    @RequestMapping("/signup")
    public String signup(Users users, RedirectAttributes attributes) {
        userService.addUser(users);
        attributes.addFlashAttribute("username", users.getUserName());
        return "redirect:/book/allBook";
    }

}
