package com.ning.ying.servlet;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "YzmServlet", value = "/YzmServlet")
public class YzmServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //图片对象
        BufferedImage bfi=new BufferedImage(80,40,BufferedImage.TYPE_3BYTE_BGR);
        Graphics g=bfi.createGraphics();
        g.fillRect(0,0,80,40);

        //验证码字符范围
        char[] ch="ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
        Random r=new Random();
        int index;
        StringBuffer sb=new StringBuffer();
        for (int i = 0; i < 4; i++) {
            index=r.nextInt(ch.length);
            g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
            Font font=new Font("宋体",30,20);
            g.setFont(font);
            g.drawString(ch[index]+"",(i*20)+2,23);
            sb.append(ch[index]);
        }

        //添加噪点
        int area=(int)(0.02*80*40);
        for (int i = 0; i < area; i++) {
            int x=(int)(Math.random()*80);
            int y=(int)(Math.random()*40);
            bfi.setRGB(x,y,(int)(Math.random()*255));
        }

        //设置验证码干扰线
        for (int i = 0; i < 5; i++) {
            //随机获取干扰线的起点终点
            int xstart=(int)(Math.random()*80);
            int ystart=(int)(Math.random()*40);
            int xend=(int)(Math.random()*80);
            int yend=(int)(Math.random()*40);
            g.setColor(interLine(1,255));
            g.drawLine(xstart,ystart,xend,yend);
        }

        HttpSession session= request.getSession();
        session.setAttribute("code",sb.toString());
        System.out.println(sb);
        ImageIO.write(bfi,"JPG",response.getOutputStream());
        request.getRequestDispatcher("regist.jsp").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private static Color interLine(int Low,int High){
        if(Low>255){
            Low=255;
        }
        if(High>255){
            High=255;
        }
        if(Low<0){
            Low=0;
        }
        if(High<0){
            High=0;
        }
        int interval=High-Low;
        int r=Low+(int)(Math.random()*interval);
        int g=Low+(int)(Math.random()*interval);
        int b=Low+(int)(Math.random()*interval);
        return new Color(r,g,b);
    }
}
