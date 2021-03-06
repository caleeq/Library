package com.steven.dao;

import com.steven.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    int addBook(Books books);

    int deleteBookById(@Param("bookID") int id);

    int updateBook(Books books);

    Books queryBookById(@Param("bookID") int id);

    List<Books> queryAllBook();

    List<Books> queryBookByName(@Param("bookName") String bookName, @Param("pageSize") int pageSize);

    List<Books> queryBookByPage(@Param("pageNow") int pageNow, @Param("pageSize") int pageSize);

    int totalBook(@Param("bookName") String bookName);
}