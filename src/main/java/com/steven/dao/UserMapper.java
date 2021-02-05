package com.steven.dao;

import com.steven.pojo.Users;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    Users checkUser(@Param("username") String username, @Param("password") String password);

    int addUser(Users users);
}
