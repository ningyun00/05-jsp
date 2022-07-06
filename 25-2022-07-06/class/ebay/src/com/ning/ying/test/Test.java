package com.ning.ying.test;

public class Test {
    public static void main(String[] args) {
        StringBuffer A = new StringBuffer();
        A.append("123,234,235,236");
        String B = "236";
        int B1 = A.indexOf(B);
//        int B2 = A.indexOf();
        System.out.println(B1);
        System.out.println(B1+B.length()+1);
        A.delete(B1, B1 + B.length() + 1);
        System.out.println(A);
        String A1 = A.toString()+" ";
        if (A1.endsWith(", ")){
            A1 = A1.replace(", ","");
        }
        System.out.println(A1.trim());
    }
}
