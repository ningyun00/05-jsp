package com.ning.ying.test;

public class Test implements Runnable {
    private String num;

    public Test(int num) {
        this.num = num + "";
    }

    public static void main(String[] args) {
        int[] nums = {123, 219, 1298, 19283, 987, 123};
        for (int i = 0; i < nums.length; i++) {
            new Thread(new Test(nums[i])).start();
        }
    }

    @Override
    public void run() {
        try {
            Thread.sleep(Integer.parseInt(num));
            System.out.println(num);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
