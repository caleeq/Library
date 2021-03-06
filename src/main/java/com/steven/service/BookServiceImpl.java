package com.steven.service;

import com.steven.dao.BookMapper;
import com.steven.pojo.Books;

import java.util.List;

public class BookServiceImpl implements BookService {

    //service callout dao
    private BookMapper bookMapper;

    public void setBookMapper(BookMapper bookMapper) {
        this.bookMapper = bookMapper;
    }

    public int addBook(Books books) {
        return bookMapper.addBook(books);
    }

    public int deleteBookById(int id) {
        return bookMapper.deleteBookById(id);
    }

    public int updateBook(Books books) {
        return bookMapper.updateBook(books);
    }

    public Books queryBookById(int id) {
        return bookMapper.queryBookById(id);
    }

    public List<Books> queryAllBook() {
        return bookMapper.queryAllBook();
    }

    public List<Books> queryBookByName(String bookName, int pageSize) {
        return bookMapper.queryBookByName(bookName, pageSize);
    }

    public List<Books> queryBookByPage(int pageNow, int pageSize) {
        return bookMapper.queryBookByPage(pageNow, pageSize);
    }

    public int totalBook(String bookName) {
        return bookMapper.totalBook(bookName);
    }

}