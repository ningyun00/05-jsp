package com.ning.ying.test;

import java.sql.Timestamp;
import java.util.Date;

public class Test {
    public static void main(String[] args) {
        StringBuilder stringBuffer = new StringBuilder("123,124,345,456,789");
        String A1 = "123";
//                       起始长度                    终止长度+1(移除逗号)
        stringBuffer.delete(stringBuffer.indexOf(A1),stringBuffer.indexOf(A1)+A1.length()+1);
        String A2 = stringBuffer + " ";
        if(A2.endsWith(", ")){
            A2 = A2.replace(", "," ");
        }
        System.out.println(A2);//234,345,456
    }
}
