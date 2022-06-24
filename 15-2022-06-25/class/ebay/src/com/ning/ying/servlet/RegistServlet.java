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
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        System.out.println("RegistServlet (注册) service (服务)");
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession();
        String method = req.getParameter("method");
        System.out.println(method);
        if ("regist".equals(method)) {
            regist(req, resp);
        } else if ("peanName".equals(method)) {
            peanName(req, resp);
        }else if("veryCode".equals(method)){
            veryCode(req,resp);//验证码
        }else if("valVeryCode".equals(method)){
            valVeryCode(req,resp);//验证 验证码
        }

    }

    /** 验证 验证码 */
    private void valVeryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("UserServlet   valVeryCode 方法.........");
        //取ajax传来的值（验证码）
        String yzm = req.getParameter("yzm");

        //取session中保存的验证码
        HttpSession session = req.getSession();
        String yzmStr =(String)session.getAttribute("yzmStr");

        //比较，并返回响应
        PrintWriter out = resp.getWriter();
        if(!(yzm.equalsIgnoreCase(yzmStr))){
            out.print("验证码不正确！");
        }else{
            out.print("");
        }
    }

    /** 生成验证码(生成一张图片)：把随机数用画笔画成图片，然后用流写出 */
    private void veryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("UserServlet   veryCode 方法.........");

        //第一步：生成一张指定宽高的画板
        int width=100;
        int height=30;
        BufferedImage bi=new BufferedImage(width, height,BufferedImage.TYPE_INT_RGB);

        //第二步：拿到这张画板的画笔
        Graphics g = bi.getGraphics();

        //第三步：画背景颜色，宽高-2是为了预留边框的位置
        g.setColor(Color.YELLOW);
        g.fillRect(1, 1, width-2, height-2);

        //第四步：画边框
        g.setColor(Color.BLACK);
        g.drawRect(0, 0, width, height);

        //第五步：生成4随机数，画入
        Color color=new Color(100,20,30);
        g.setColor(color);
        g.setFont(new Font("宋体",Font.PLAIN,20));    //自己修改字体大小

        String str="";//字符串形式保存生成的随机数
        char[] c={'1','2','3','a','b','v','l','L','O'};
        Random r=new Random();
        for(int i=0;i<4;i++){
            int index=r.nextInt(c.length);
            g.drawString(c[index]+"", 15+i*20, 20);
            str+=c[index];
        }

        //把生成的验证码保存在session域作用对象中，方便验证
        req.getSession().setAttribute("yzmStr", str);


        //画干扰线
        for(int i=1;i<=30;i++){
            int x=r.nextInt(width);//随机生成的起点(必须在图片宽度范围)
            int y=r.nextInt(height);//随机生成的起点(必须在图片高度范围)
            g.drawLine(x, y, x+30, y+30);
        }

        //第六步：释放画笔
        g.dispose();

        //第七步：输出
        ServletOutputStream output = resp.getOutputStream();
        ImageIO.write(bi, "jpg", output);

    }

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
            printWriter.write("<script>alert('注册成功');location.href='index.jsp';</script>");
        } else {
            printWriter.write("<script>alert('注册失败');location.href='index.jsp';</script>");
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
