package com.steven.service;

import com.steven.pojo.Users;

public interface UserService {
    Users checkUser(String username, String password);

    int addUser(Users users);
}
