package com.ning.ying.servlet.member;

import com.ning.ying.dao.*;
import com.ning.ying.entity.EabyNews;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyUser;
import com.ning.ying.entity.EabyUserAddress;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet(name = "MemberServlet", value = "/MemberServlet")
public class MemberServlet extends HttpServlet {
    private static HttpSession session = null;
    private static HttpServletRequest httpServletRequest = null;
    private static HttpServletResponse httpServletResponse = null;
    private static ProductDao pDao = new ProductDao();//商品表
    private static OrderDao orderDao = new OrderDao();//订单表
    private static NewsDao newsDao = new NewsDao();//新闻表
    private static UserDao userDao = new UserDao();//用户表
    private static final int eachPage = 10;//每次分几页
    private static final int maxNewsRow = newsDao.maxRow();//新闻最大页数
    private static final int maxUserListRow = userDao.maxRow();//新闻最大页数

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();//响应写出
        session = req.getSession();//获取session
        httpServletRequest = req;
        httpServletResponse = resp;
        System.out.println("MemberServlet (后台服务) service (服务)");
        String method = req.getParameter("method");
        //    首页                        个人订单                        所有订单                                新闻                          用户表                         所有用户
        if ("backstage".equals(method) || "memberOrder".equals(method) || "memberOrderList".equals(method) || "memberNews".equals(method) || "memberUser".equals(method) || "memberUserList".equals(method)) {
            select(req, resp);
            if ("backstage".equals(method)) {//首页
                resp.sendRedirect("Member/member.jsp");
            }
            if ("memberOrder".equals(method)) {//个人订单
                resp.sendRedirect("Member/memberOrder.jsp");
            }
            if ("memberOrderList".equals(method)) {//全部订单
                resp.sendRedirect("Member/memberOrderList.jsp");
            }
            if ("memberNews".equals(method)) {//新闻
                resp.sendRedirect("Member/memberNewList.jsp");
        }
            if ("memberUser".equals(method)) {//用户表
                resp.sendRedirect("Member/memberUser.jsp");
            }
            if ("memberUserList".equals(method)) {//全部用户
                resp.sendRedirect("Member/memberUserList.jsp");
            }
        }
        if ("member".equals(method)) {
            System.out.println("后台页面");
            resp.sendRedirect("Member/member.jsp");
        }//添加成功后跳转页面
        if ("memberProductList".equals(method)) {
            session.setAttribute("pSelect", pDao.selectAll());
            printWriter.write("<script>location.href='/ning.ying/Member/memberProductList.jsp';</script>");
        }
    }

    private void select(HttpServletRequest req, HttpServletResponse resp) {
        //加载固定列表
        session.setAttribute("pSelect", pDao.selectAll());//加载查询商品表
        Object obj = req.getSession().getAttribute("eabyUser");//user 来自 UserServlet.java login()
        //单个用户
        EabyUser user = (EabyUser) obj;

        //根据用户id查询所有用户地址，默认地址排在前面
        UserAddressDao addressDao = new UserAddressDao();
        //用户地址
        List<EabyUserAddress> list = addressDao.queryByUserId(user.getId());
        session.setAttribute("eabyOrder", list);
        //用户订单
        List<EabyOrder> eabyOrderList = orderDao.getUserOrder(2);
        session.setAttribute("getUserOrder", eabyOrderList);
        //所有订单
        List<EabyOrder> OrderListAll = orderDao.getUserOrder();
        session.setAttribute("OrderListAll", OrderListAll);
        //所有新闻
        List<EabyNews> newsAll = newsDao.getNewsAll(1, eachPage);
        session.setAttribute("newsAll", newsAll);
        //所有新闻最终分几页
        int eventualLimit = maxNewsRow % eachPage == 0 ? maxNewsRow / eachPage : maxNewsRow / eachPage + 1;
        session.setAttribute("eventualLimit", eventualLimit);//最终页数
        session.setAttribute("onePage", 1);//改变起始页数

        //用户列表
        List<EabyUser> userList = userDao.selectUser(1,eachPage);
        session.setAttribute("userList", userList);
        //用户列表最终分几页
        int eventualUserList = maxUserListRow % eachPage == 0 ? maxUserListRow / eachPage : maxUserListRow / eachPage + 1;
        session.setAttribute("eventualUserList", eventualUserList);//最终页数
        session.setAttribute("onePageUserList", 1);//改变起始页数
    }
}
