package com.ning;

import java.awt.*;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

public class Form extends Frame {
    public static Image image = null;

    public void win() {
        setTitle(Tool.Title);
        setVisible(true);
        setSize(Tool.width, Tool.height);
        setLocation(Tool.X, Tool.Y);
        addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent e) {
                System.exit(0);
            }
        });
    }

    @Override
    public void paint(Graphics g) {
        image = Util.getImage(Tool.backgroundImage);
        g.drawImage(image, Tool.backgroundImageX, Tool.backgroundImageY, null);
        image = Util.getImage(Tool.player);
        g.drawImage(image,Tool.playerX,Tool.playerY,null);
    }

    static class key extends KeyAdapter {
        @Override
        public void keyPressed(KeyEvent e) {
            int keyMover = e.getKeyCode();
            System.out.println(keyMover);
            if (38 == keyMover) {
                Tool.playerY += 300;
            }
        }

        @Override
        public void keyReleased(KeyEvent e) {
            super.keyReleased(e);
        }
    }
}
