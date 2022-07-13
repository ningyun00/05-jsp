package com.ning.ying.servlet;

import com.ning.ying.dao.UserDao;
import com.ning.ying.entity.User;
import com.ning.ying.tool.Tool;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 登录服务
 */
@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    private static PrintWriter printWriter = null;
    private static HttpSession session = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("LoginServlet (登录服务) get");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("LoginServlet (登录服务) post");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("LoginServlet (登录服务) service");
        String method = request.getParameter("method");

        printWriter = response.getWriter();
        session = request.getSession();

        if ("login".equals(method)) {//登录
            loginServlet(request, response);
        }
        if ("logout".equals(method)) {//清除登录信息
            Cookie cookie = new Cookie(Tool.cookieName, null);
            cookie.setMaxAge(60 * 60 * 24 * 3);
            response.addCookie(cookie);
            printWriter.write("<script>location.href='login.jsp';</script>");
        }
    }

    /**
     * 登录服务
     */
    private void loginServlet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //获取信息
        String loginName = req.getParameter("loginName");
        String password = req.getParameter("password");
        String save = req.getParameter("save");

        //查寻到用户
        User user = new User();
        user.setLoginName(loginName);
        user.setPassword(password);
        Tool.object = Tool.userDao.loginUser(user);

        session.setAttribute("user", Tool.object);

        String value = null;
        //登录判断
        user = (User) Tool.object;
        if (loginName.equals(user.getLoginName()) && password.equals(user.getPassword())) {
            if ("save".equals(save)) {
                Cookie[] cookies = req.getCookies();
                for (Cookie c : cookies) {
                    if (Tool.cookieName.equals(c.getName())) {
                        value = loginName + "," + password;
                    } else {
                        value = loginName + "," + password;
                    }
                }
            }
            Cookie cookie = new Cookie(Tool.cookieName, value);
            cookie.setMaxAge(60 * 60 * 24 * 3);
            resp.addCookie(cookie);
            printWriter.write("<script>alert('登录成功');location.href='IndexServlet';</script>");
        } else {
            printWriter.write("<script>alert('登录失败');location.href='IndexServlet';</script>");
        }
    }
}
