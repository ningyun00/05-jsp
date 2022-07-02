package com.ning.ying.test;

import com.ning.ying.dao.OrderDao;
import com.ning.ying.entity.EabyOrder;

import java.util.Arrays;
import java.util.List;

public class Test {
    public static void main(String[] args) {
        OrderDao orderDao = new OrderDao();
        List<EabyOrder> eabyOrderList = orderDao.getUserOrder(2);
        for(EabyOrder eabyOrder: eabyOrderList){
            System.out.print(eabyOrder.getId());
            System.out.print(eabyOrder.getUserId());
            System.out.print(eabyOrder.getLoginName());
            System.out.print(eabyOrder.getUserAddress());
            System.out.print(eabyOrder.getCreateTime());
            System.out.print(eabyOrder.getCost());
            System.out.print(eabyOrder.getStatus());
            System.out.print(eabyOrder.getSerialNumber());
            System.out.println();
        }
        System.out.println(result);
    }
}
