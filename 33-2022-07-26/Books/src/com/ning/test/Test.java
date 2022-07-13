package com.ning.test;

import com.ning.Tool.Tool;
import com.ning.dao.BookDao;

public class Test {
    public static void main(String[] args) {
        BookDao bookDao = new BookDao();
        int line = bookDao.selectRow();
        //最多分几页
        int maxRow = line% Tool.limit == 0 ? line / Tool.limit : line / Tool.limit + 1;
        System.out.println(maxRow);
    }
}
