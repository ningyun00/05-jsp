package com.ning.ying.servlet.member;

import com.ning.ying.dao.OrderDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "MemberOrderAllServlet", value = "/MemberOrderAllServlet")
public class MemberOrderAllServlet extends HttpServlet {
    private static OrderDao orderDao = new OrderDao();
    private static HttpSession httpSession = null;
    /**
     * 每次分几页
     */
    private static final int eachPage = 10;//每次分几页
    private static int maxRow = orderDao.maxRow();

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
    }

    /**
     * 翻页
     */
    private void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  最终分页多少次     多少行    每次几行
        int eventualOrderAllList = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        int onePageOrderAllList = Integer.parseInt(req.getParameter("pageNext"));//获取第几页
        List<EabyOrder> OrderListAll = orderDao.getUserOrder(onePageOrderAllList,eachPage);
        httpSession.setAttribute("OrderListAll", OrderListAll);
        httpSession.setAttribute("onePageOrderAllList", onePageOrderAllList);//改变起始页数
        httpSession.setAttribute("eventualOrderAllList", eventualOrderAllList);//最终页数
        resp.sendRedirect("Member/memberOrderList.jsp");//跳转
    }
}
