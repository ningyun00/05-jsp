package com.ning;

import java.util.HashMap;
import java.util.Map;

public class Test {
    public static void main(String[] args) {
        Map<Integer,String > a = new HashMap<>();
        a.put(1,"1");
        a.put(2,"2");
        a.put(3, "3");
        a.remove(2);
        for(Integer i :a.keySet()){
            System.out.println(i);
        }
    }
}
