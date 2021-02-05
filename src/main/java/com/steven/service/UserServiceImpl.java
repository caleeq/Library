package com.steven.service;

import com.steven.dao.UserMapper;
import com.steven.pojo.Users;

public class UserServiceImpl implements UserService {

    private UserMapper userMapper;

    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    public Users checkUser(String username, String password) {
        return userMapper.checkUser(username, password);
    }

    public int addUser(Users users) {
        return userMapper.addUser(users);
    }
}
