package com.ning.ying.servlet;

import com.ning.ying.dao.UserDao;
import com.ning.ying.entity.EabyUser;

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

@WebServlet(name = "RegistServlet", value = "/RegistServlet")
public class RegistServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        System.out.println("RegistServlet (注册) service (服务)");
        HttpSession session = req.getSession();
        String method = req.getParameter("method");
        System.out.println(method);
        if ("regist".equals(method)) {
            regist(req, resp);
        }
        if ("peanName".equals(method)) {
            peanName(req, resp);
        }
        if ("veryCode".equals(method)) {
            veryCode(req, resp);//验证码
        }
        if ("valVeryCode".equals(method)) {
            valVeryCode(req, resp);//验证 验证码
        }

    }

    /**
     * 验证 验证码
     */
    private void valVeryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("UserServlet   valVeryCode 方法.........");
        //取ajax传来的值（验证码）
        String yzm = req.getParameter("yzm");
        //取session中保存的验证码
        HttpSession session = req.getSession();
        String yzmStr =String.valueOf(session.getAttribute("yzmStr"));
        //比较，并返回响应
        PrintWriter out = resp.getWriter();
        if (!(yzm.equalsIgnoreCase(yzmStr))) {
            out.print("验证码不正确！");
        } else {
            out.print("");
        }
    }

    /**
     * 生成验证码(生成一张图片)：把随机数用画笔画成图片，然后用流写出
     */
    private void veryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("UserServlet   veryCode 方法.........");
        //第一步：生成一张指定宽高的画板
        int width = 100;
        int height = 40;
        //设置画板
        BufferedImage bufferedImage = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
        //第二步：拿到这张画板的画笔
        Graphics graphics1 = bufferedImage.getGraphics();//背景画板
        //第三步：画背景颜色，宽高-2是为了预留边框的位置
        Random random = new Random();//随机数
        graphics1.setColor(color());//随机颜色--背景
        graphics1.fillRect(2, 2, width - 4, height - 4);//边框 A B , width-A*2,height-B*2
        //第四步：画边框
        graphics1.setColor(new Color(1, 1, 1));//固定边框颜色
        graphics1.drawRect(0, 0, width, height);
        //第五步：生成4随机数，画入
        graphics1.setColor(color());//随机颜色
        graphics1.setFont(new Font("宋体", Font.PLAIN, 30));    //自己修改字体大小
        StringBuffer str = new StringBuffer();//字符串形式保存生成的随机数
        char[] c = "ABCDEFGHIJKLMNOPQRSTUVWXYG123456789".toCharArray();
        for (int i = 0; i < 4; i++) {
            int index = random.nextInt(c.length);
            graphics1.drawString(c[index] + "", 10 + i * 20, 20 + random.nextInt(20));//字体宽度
            str.append(c[index]);
        }
        //把生成的验证码保存在session域作用对象中，方便验证
        System.out.println(str);
        req.getSession().setAttribute("yzmStr", str);
        //画干扰线
        Graphics graphics2 = bufferedImage.getGraphics();//干扰线--画笔
        Graphics graphics3 = bufferedImage.getGraphics();//干扰点--画笔
        for (int i = 0; i < 15; i++) {//干扰线
            graphics2.setColor(color());
            int x1 = random.nextInt(width);//随机生成的起点(必须在图片宽度范围)
            int y1 = random.nextInt(height);//随机生成的起点(必须在图片高度范围)
            int x2 = random.nextInt(width);//结束点
            int y2 = random.nextInt(height);//结束点
            graphics2.drawLine(x1, y1, x2, y2);
        }
        for (int j = 0; j < 100; j++) {//干扰点
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            graphics3.setColor(color());
            graphics3.drawLine(x, y, x, y);
        }
        //第六步：释放画笔
        graphics1.dispose();
        graphics2.dispose();
        graphics3.dispose();
        //第七步：输出
        ServletOutputStream output = resp.getOutputStream();
        ImageIO.write(bufferedImage, "jpg", output);
    }

    /**
     * 随机颜色
     */
    private static Color color() {
        Random random = new Random();
        int color = 255;
        return new Color(random.nextInt(color), random.nextInt(color), random.nextInt(color));
    }

    /**
     * 注册
     */
    private static void regist(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        EabyUser user = new EabyUser();
        PrintWriter printWriter = resp.getWriter();
        user.setLoginName(req.getParameter("registName"));
        user.setUserName(req.getParameter("registName"));
        user.setPassword(req.getParameter("registPassword1"));
        user.setEmail(req.getParameter("registEmail"));
        user.setMobile(req.getParameter("registMobile"));
        UserDao userDao = new UserDao();
        int row = userDao.registUser(user);
        if (row == 1) {
            printWriter.write("<script>alert('注册成功');location.href='IndexServlet';</script>");
        } else {
            printWriter.write("<script>alert('注册失败');location.href='IndexServlet';</script>");
        }
    }

    private static void peanName(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("name");
        System.out.println(name);
        UserDao userDao = new UserDao();
        boolean isTrueOrFalse = userDao.registrePeatName(name);
        PrintWriter printWriter = resp.getWriter();
        if (!isTrueOrFalse) {
            printWriter.write("此" + name + "用户名被使用");
        }
    }
}
