package com.ning.ying.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * 首页
 */
@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet （首页服务）doGet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet （首页服务）doPost");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet （首页服务）service （服务）");
        //加载首页
        String method = request.getParameter("indexServlet");
        if ("indexServlet".equals(method)) {//首页
            indexServlet(request, response);
        }
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    private void indexServlet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("index.jsp").forward(req,resp);
    }
}
