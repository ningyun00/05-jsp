package com.ning;

import com.ning.dao.StudentDao;

public class Test {
    public static void main(String[] args) {
        StudentDao studentDao = new StudentDao();
        System.out.println(studentDao.select());
    }
}
