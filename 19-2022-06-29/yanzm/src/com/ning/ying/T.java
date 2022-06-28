package com.ning.ying;

public class T {
    public static void main(String[] args) {
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        char []a = s.toCharArray();
        System.out.println(a);
        for(char c: a){
            System.out.println(c);
        }
    }
}
