package com.ning.ying.test;

import java.sql.Timestamp;
import java.util.Date;

public class Test {
    public static void main(String[] args) {
        StringBuffer A = new StringBuffer("123,234,345");
        String D = new String("123,234,345");
        String B = "123";
        int C = A.indexOf(B);
        System.out.println(D.contains(B));
    }
}
