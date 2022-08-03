package com.ning;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.net.URL;

public class Util {
    private Util() {
    }

    public static Image getImage(String path) {
        BufferedImage bufferedImage = null;
        try {
            URL url = Util.class.getClassLoader().getResource(path);
            bufferedImage = ImageIO.read(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return bufferedImage;
    }
}
