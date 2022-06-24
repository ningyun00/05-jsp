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

/**
 * 登录
 */
@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("LoginServlet (登录服务) service");
        String method = req.getParameter("method");
        if ("login".equals(method)) {
            login(req, resp);
        }
        if ("注销".equals(method)) {
            HttpSession session = req.getSession();
            System.out.println(session.getAttribute("eabyUser"));
            session.removeAttribute("eabyUser");
            session.invalidate();
            resp.sendRedirect("IndexServlet");
        }
    }

    /**
     * 登录
     */
    private static void login(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        PrintWriter printWriter = resp.getWriter();
        UserDao userDao = new UserDao();
        String loginName = req.getParameter("loginName");
        String loginPassword = req.getParameter("loginPassword");
        System.out.println(loginName + "" + loginPassword);
        EabyUser eabyUser = userDao.selectLogin(loginName, loginPassword);
        HttpSession session = req.getSession();
        if (eabyUser == null) {
            System.out.println("登陆失败");
            printWriter.write("<script>alert('登陆失败');location.href='login.jsp';</script>");
        } else if (loginPassword.equals(eabyUser.getPassword())) {
            System.out.println("登陆成功");
            session.setAttribute("eabyUser", eabyUser);
            int type = eabyUser.getType();
            session.setAttribute("type", type);
            System.out.println(eabyUser);
            req.getRequestDispatcher("IndexServlet").forward(req, resp);
        }else{
            printWriter.write("<script>alert('登陆失败');location.href='login.jsp';</script>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
