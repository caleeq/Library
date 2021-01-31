package com.steven.controller;

import com.alibaba.fastjson.JSON;
import com.steven.pojo.Books;
import com.steven.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("bookServiceImpl")
    private BookService bookService;
    private final int pageSize = 10;

    @RequestMapping("/allBook")
    public String list(Model model) {
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list", list);
        return "allBook";
    }

    @RequestMapping("/showBook/{pageNow}")
    public String record(@PathVariable("pageNow") int pageNow, Model model) {
        int totalRecord = bookService.totalBook("");
        int pageCount = (totalRecord + pageSize - 1) / pageSize;
        List<Books> list = bookService.queryBookByPage(pageNow, pageSize);
        model.addAttribute("list", list);
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("pageNow", pageNow);
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddPaper() {
        return "addBook";
    }

    @RequestMapping("/addBook")
    public String addBook(Books books) {
        bookService.addBook(books);
        return "redirect:/book/showBook/1";
    }

    @RequestMapping("/toUpdate/{bookID}")
    public String toUpdatePaper(@PathVariable("bookID") int id, Model model) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("Qbooks", books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books) {
        bookService.updateBook(books);
        return "redirect:/book/showBook/1";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id) {
        bookService.deleteBookById(id);
        return "redirect:/book/showBook/1";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
        int pageNow = 1;
        int totalRecord = bookService.totalBook(queryBookName);
        int pageCount = (totalRecord + pageSize - 1) / pageSize;
        List<Books> list = bookService.queryBookByName(queryBookName, pageSize);
        if (list.size() == 0) {
            model.addAttribute("error", "No Result");
        }
        model.addAttribute("pageCount", pageCount);
        model.addAttribute("pageNow", pageNow);
        model.addAttribute("list", list);
        return "allBook";
    }

//  @RequestMapping(value = "/findBook", produces = "text/html;charset=UTF-8")
    @ResponseBody
    @RequestMapping("/findBook")
    public String findBook(String queryBookName) {
        List<Books> list = bookService.queryBookByName(queryBookName, pageSize);
        return JSON.toJSONString(list);
    }

}
