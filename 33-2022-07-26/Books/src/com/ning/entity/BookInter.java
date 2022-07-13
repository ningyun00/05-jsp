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
    /**查询多少行*/
    Integer selectRow();
}
