package com.steven.pojo;

import com.alibaba.fastjson.annotation.JSONType;

@JSONType(orders = {"bookID","bookName","bookCounts","bookDesc"})
public class Books {
    public int getBookID() {
        return bookID;
    }

    public void setBookID(int bookID) {
        this.bookID = bookID;
    }

    public String getBookName() {
        return bookName;
    }

    public void setBookName(String bookName) {
        this.bookName = bookName;
    }

    public int getBookCounts() {
        return bookCounts;
    }

    public void setBookCounts(int bookCounts) {
        this.bookCounts = bookCounts;
    }

    public String getBookDesc() {
        return bookDesc;
    }

    public void setBookDesc(String bookDesc) {
        this.bookDesc = bookDesc;
    }

    public Books(int bookID, String bookName, int bookCounts, String bookDesc) {
        this.bookID = bookID;
        this.bookName = bookName;
        this.bookCounts = bookCounts;
        this.bookDesc = bookDesc;
    }

    public Books(){

    }

    @Override
    public String toString() {
        return "Books{" +
                "bookID=" + bookID +
                ", bookName='" + bookName + '\'' +
                ", bookCounts=" + bookCounts +
                ", bookDesc='" + bookDesc + '\'' +
                '}';
    }

    private int bookID;
    private String bookName;
    private int bookCounts;
    private String bookDesc;
}