package com.ning.ying.servlet;

import com.ning.ying.dao.UserDao;
import com.ning.ying.entity.EabyUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "RegistServlet", value = "/RegistServlet")
public class RegistServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("RegistServlet (注册) service (服务)");
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession();
        String method = req.getParameter("method");
        UserDao userDao = new UserDao();
        System.out.println(method);
        if ("regist".equals(method)) {
            EabyUser user = new EabyUser();
            user.setLoginName(req.getParameter("registName"));
            user.setUserName(req.getParameter("registName"));
            user.setPassword(req.getParameter("registPassword1"));
            user.setEmail(req.getParameter("registEmail"));
            user.setMobile(req.getParameter("registMobile"));
            int row = userDao.registUser(user);
            if (row == 1) {
                printWriter.write("<script>alert('注册成功');location.href='index.jsp';</script>");
            } else {
                printWriter.write("<script>alert('注册失败');location.href='index.jsp';</script>");
            }
        }
        if ("peanName".equals(method)) {
            String name = req.getParameter("name");
            System.out.println(name);
            boolean isTrueOrFalse = userDao.registrePeatName(name);
            if (!isTrueOrFalse) {
                printWriter.write("此"+name+"用户名被使用");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
