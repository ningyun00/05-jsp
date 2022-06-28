package com.ning.ying;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

@WebServlet(name = "TestServlet", value = "/TestServlet")
public class TestServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String method = req.getParameter("method");
        if ("veryCode".equals(method)) {
            veryCode(req, resp);
        } else if ("valVeryCode".equals(method)) {
            valVeryCode(req, resp);
        }
    }

    @Override/*生成code验证码*/
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    /**
     * 验证 验证码
     */
    private void valVeryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("UserServlet   valVeryCode 方法.........");

        //取ajax传来的值（验证码）
        String yzm = req.getParameter("yzm");
        System.out.println("参数传来验证码：" + yzm);

        //取session中保存的验证码
        HttpSession session = req.getSession();
        String yzmStr = (String) session.getAttribute("yzmStr");
        System.out.println("取session中验证码：" + yzmStr);

        //比较，并返回响应
        PrintWriter out = resp.getWriter();
        if (!(yzm.equalsIgnoreCase(yzmStr))) {
            out.print("true");//验证码不正确！ 传 true
        }
    }

    private void veryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //第一步：生成一张指定宽高的画板
        int width = 100;
        int height = 30;
        BufferedImage bi = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        //第二步：拿到这张画板的画笔
        Graphics g = bi.getGraphics();
        Graphics I = bi.getGraphics();
        //第三步：画背景颜色，宽高-2是为了预留边框的位置
        g.setColor(Color.PINK);
        g.fillRect(0, 0, width, height);

        //第四步：画边框
        g.setColor(Color.cyan);
        g.drawRect(0, 0, width, height);

        //第五步：生成4随机数，画入
        int o= 0+(int)(Math.random()*(256-0+1));
        int d= 0+(int)(Math.random()*(256-0+1));
        int e= 0+(int)(Math.random()*(256-0+1));
        Color color = new Color(o, d, e);
        g.setColor(color);
        g.setFont(new Font("宋体", Font.ITALIC, 60));    //自己修改字体大小
        I.setColor(new Color(0+(int)(Math.random()*(256-0+1)),0+(int)(Math.random()*(256-0+1)),0+(int)(Math.random()*(256-0+1))));
        String str = "";//字符串形式保存生成的随机数
        String s = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        char[] c = s.toCharArray();
        Random r = new Random();
        for (int i = 0; i < s.length(); i++) {
            int index = r.nextInt(c.length);
            I.drawString(c[index] + "", i * 20, 20);
            str += c[index];
        }

        //把生成的验证码保存在session域作用对象中，方便验证
        req.getSession().setAttribute("yzmStr", str);

        System.out.println("保存在session的验证码：" + str);

        //画干扰线
        for (int i = 1; i <= 30; i++) {
            int x = r.nextInt(width);//随机生成的起点(必须在图片宽度范围)
            int y = r.nextInt(height);//随机生成的起点(必须在图片高度范围)
            g.drawLine(x, y, i + 30, i + 30);
        }

        //第六步：释放画笔
        g.dispose();

        //第七步：输出
        ServletOutputStream output = resp.getOutputStream();
        ImageIO.write(bi, "jpg", output);
    }
}
