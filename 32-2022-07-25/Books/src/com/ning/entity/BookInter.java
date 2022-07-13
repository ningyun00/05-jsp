package com.ning.entity;

import java.util.List;

/**
 * 图书接口
 */
public interface BookInter {
    /**
     * 查询所有书籍
     */
    List<Book> selectBook();

    /**
     * 查询所有书籍分页
     */
    List<Book> selectBook(int limitStart);

    /**
     * 查询多少行
     */
    Integer selectRow();

    /**
     * 批量删除/或单条删除
     */
    Integer deleteBook(String[] str);

    /**
     * 修改
     */
    Integer updateBook(Book book);

    /**
     * 查询单条书籍
     */
    Book selectBook(Integer id);

    /**
     * 搜索书籍
     */
    List<Book> selectBook(Book book);

    /**
     * 添加书籍
     */
    Integer addBook(Book book);
}
