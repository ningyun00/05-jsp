package com.ning.ying.servlet.member;

import com.ning.ying.dao.OrderDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "MemberOrderUserServlet", value = "/MemberOrderUserServlet")
public class MemberOrderUserServlet extends HttpServlet {
    private static OrderDao orderDao = new OrderDao();
    private static HttpSession httpSession = null;
    /**
     * 每次分几页
     */
    private static final int eachPage = 10;//每次分几页
    private static int maxRow = 0;//最大页数

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MemberOrderUserServlet (用户订单服务) service (服务)");
        String method = request.getParameter("method");
        httpSession = request.getSession();
        if ("nextPage".equals(method)) {//下一页
            page(request, response);
        }
        if ("onPage".equals(method)) {//上一页
            page(request, response);
        }
        if ("goods".equals(method)) {//确认收货
            goodsS(request, response);
        }
    }

    private void goodsS(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            int row = new OrderDao().goods(id);
            PrintWriter printWriter = resp.getWriter();
            if (row > 0) {
                printWriter.write("<script>alert('已成功收货');location.href='/ning.ying/MemberServlet?method=memberOrder';</script>");
            } else {
                printWriter.write("<script>alert('收货失败');location.href='/ning.ying/MemberServlet?method=memberOrder';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 翻页
     */
    private void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  最终分页多少次     多少行    每次几行
        Object obj = httpSession.getAttribute("eabyUser");//user 来自 UserServlet.java login()
        EabyUser user = (EabyUser) obj;
        maxRow = orderDao.maxRow(user.getId());
        int eventualOrderList = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        int onePageOrderList = Integer.parseInt(req.getParameter("pageNext"));//获取第几页
        List<EabyOrder> getUserOrder = orderDao.getUserOrder(user.getId(), onePageOrderList, eachPage);//获取第几页的内容
        httpSession.setAttribute("onePageOrderList", onePageOrderList);//改变起始页数
        httpSession.setAttribute("getUserOrder", getUserOrder);//改变
        httpSession.setAttribute("eventualOrderList", eventualOrderList);//最终页数
        resp.sendRedirect("Member/memberOrder.jsp");//跳转
    }
}
