package com.ning.ying.servlet;

import com.ning.ying.entity.EabyUser;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 订单服务
 */
@WebServlet(name = "OrderServlet", value = "/OrderServlet")
public class OrderServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("OrderServlet (订单) service (服务)");
        String order = req.getParameter("method");
        if ("createOrder".equals(order)) {
            createOrder(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("OrderServlet (订单) doGet (get方法)");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("OrderServlet (订单) doPost (post方法)");
    }

    /**
     * 生成订单
     */
    private void createOrder(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("OrderServlet (订单服务) createOrder (创建订单)");
        HttpSession session = request.getSession();
        //取当前登录的用户信息  UserServlet.java Login()
        EabyUser user = (EabyUser)session.getAttribute("eabyUser");
        String address= "";
    }
}
