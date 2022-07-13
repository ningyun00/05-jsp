package com.ning.test;

import java.awt.*;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Game extends Frame {
    public void Form() {
        //标题
        setTitle("寜");
        //窗体可见
        setVisible(true);
        //窗体大小
        setSize(600, 600);
        //窗体位置
        setLocation(400, 100);
        addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });
    }
    public static void main(String[] args) {
        Game game = new Game();
        game.Form();
    }
}
