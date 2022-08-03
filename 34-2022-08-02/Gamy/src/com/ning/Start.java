package com.ning;


public class Start {
    private static Form form = new Form();

    public static void main(String[] args) {
        form.win();
        form.addKeyListener(new Form.key());//增加键盘的监听
    }
}
