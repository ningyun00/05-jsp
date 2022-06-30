package com.ning.ying.test;

import java.util.Arrays;

public class Test {
    public static void main(String[] args) {
      ten("20220629115825218");
    }
    private static void ten(String s){
        String str = s;
        String str1 = str;
        str1 = str1.substring(0,4);
        System.out.println(str1);
        str =str.replaceAll(str1,"");
        System.out.println(str);
        char[] strChar = str.toCharArray();
        String result = str1;
        for (int i = 0; i < strChar.length; i++) {
            result += Integer.toOctalString(strChar[i]);
        }
        System.out.println(result);
    }
}
