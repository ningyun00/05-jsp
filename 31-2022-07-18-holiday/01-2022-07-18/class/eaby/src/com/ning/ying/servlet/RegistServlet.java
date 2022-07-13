package com.ning.ying.servlet;

import com.ning.ying.entity.User;
import com.ning.ying.tool.Tool;

import javax.imageio.ImageIO;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

/**
 * 注册服务
 */
@WebServlet(name = "RegistServlet", value = "/RegistServlet")
public class RegistServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("RegistServlet （注册服务） doGet ");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("RegistServlet （注册服务） doPost ");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("RegistServlet （注册服务） servlet （服务）");
        //数据
        String method = request.getParameter("method");
        //条件
        if ("register".equals(method)) {
            register(request, response);
        }
        if ("repeatName".equals(method)) {
            repeatName(request, response);
        }
        if ("veryCode".equals(method)) {
            veryCode(request, response);
        }
        if ("valVeryCode".equals(method)){
            valVeryCode(request,response);
        }
    }

    private void veryCode(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //创建随机数
        Random random = new Random();
//定义一张图片的宽(100)，高(40)
        int width = 100, height = 40;
//创建画板	TYPE_INT_RGB(表示具有打包成整数像素的 8 位 RGB 颜色分量的图像。)
        BufferedImage bufferedImage =
                new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
//创建画笔
        Graphics backgroundBrush = bufferedImage.getGraphics();//背景画笔
//干扰线画笔
        Graphics interferenceBrush = bufferedImage.getGraphics();
//噪点画笔
        Graphics noiseBrush = bufferedImage.getGraphics();
//随机背景颜色
        backgroundBrush.setColor(color());
//预留边框距离//边框 A B , width-A*2,height-B*2
        backgroundBrush.fillRect(2, 2, width - 4, height - 4);
//边框颜色
        backgroundBrush.setColor(new Color(1, 1, 1, 1));//将边框颜色固定成黑色
//绘制边框
        backgroundBrush.drawRect(0, 0, width, height);
//绘制背景
        backgroundBrush.setColor(color());//随机颜色
//设置字体字体大小
        backgroundBrush.setFont(new Font("宋体", Font.PLAIN, 30));
//保存生成的随机数
        StringBuffer stringBuffer = new StringBuffer();
//获取4位随机数
        char[] c = "ABCDEFGHIJKLMNOPQRSTUVWXYG123456789".toCharArray();
        for (int i = 0; i < 4; i++) {
            int index = random.nextInt(c.length);
            //字体宽度
            backgroundBrush.drawString(c[index] + "", 10 + i * 20, 20 + random.nextInt(20));
            stringBuffer.append(c[index]);
        }
//保存4位验证码
        req.getSession().setAttribute("yzmStr", stringBuffer);
        //测试验证码
        System.out.println(stringBuffer);
//绘制干扰线
        for (int i = 0; i < 15; i++) {//干扰线数量
            int x1 = random.nextInt(width);//随机生成的起点(必须在图片宽度范围)
            int y1 = random.nextInt(height);//随机生成的起点(必须在图片高度范围)
            int x2 = random.nextInt(width);//结束点
            int y2 = random.nextInt(height);//结束点
            interferenceBrush.setColor(color());//干扰线颜色
            interferenceBrush.drawLine(x1, y1, x2, y2);
        }
//噪点
        for (int j = 0; j < 100; j++) {//噪点数量
            int x = random.nextInt(width);
            int y = random.nextInt(height);
            noiseBrush.setColor(color());//噪点颜色
            noiseBrush.drawLine(x, y, x, y);
        }
//释放画笔
        backgroundBrush.dispose();
        interferenceBrush.dispose();
        noiseBrush.dispose();
//输出
        ServletOutputStream output = resp.getOutputStream();
        ImageIO.write(bufferedImage, "jpg", output);
    }

    /**
     * 验证用户名是否重复
     */
    private void repeatName(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("user");
        PrintWriter printWriter = resp.getWriter();

        User user = new User();
        user.setLoginName(name);
        if (name.equals(Tool.userDao.selectUser(user))) {
            printWriter.write("用户名重复");
        }
    }

    /**
     * 注册
     */
    private void register(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        System.out.println("RegistServlet （注册服务） servlet （服务）register （注册）");

        PrintWriter printWriter = resp.getWriter();

        //数据
        String userName = req.getParameter("user");//用户名//登录名
        String password = req.getParameter("password");//密码
        String email = req.getParameter("email");//邮箱
        String mobile = req.getParameter("mobile");//电话号码
        User user = new User();
        user.setLoginName(userName);
        user.setUserName(userName);
        user.setPassword(password);
        user.setEmail(email);
        user.setMobile(mobile);
        Tool.row = Tool.userDao.addUser(user);
        if (Tool.row > 0) {
            printWriter.write("注册成功");
        } else {
            printWriter.write("注册失败");
        }
    }

    /**
     * 验证 验证码
     */
    private void valVeryCode(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //取ajax传来的值（验证码）
        String yzm = req.getParameter("yzm");
        //取session中保存的验证码
        HttpSession session = req.getSession();
        String yzmStr = String.valueOf(session.getAttribute("yzmStr"));
        //比较，并返回响应
        PrintWriter printWriter = resp.getWriter();
        if ((yzm.equalsIgnoreCase(yzmStr))) {
            printWriter.print("true");
            System.out.println(yzm.equalsIgnoreCase(yzmStr)+"1");
        }else{
            printWriter.print("false");
            System.out.println(yzm.equalsIgnoreCase(yzmStr)+"2");
        }
    }

    /**
     * 随机颜色
     */
    private static Color color() {
        Random random = new Random();
        int color = 255;
        int r = random.nextInt(color), g = random.nextInt(color), b = random.nextInt(color);
        return new Color(r, g, b);
    }
}
