package com.ning.ying.servlet.member;

import com.ning.ying.dao.*;
import com.ning.ying.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "MemberServlet", value = "/MemberServlet")
public class MemberServlet extends HttpServlet {
    //操作
    private static HttpSession session = null;
    private static HttpServletRequest httpServletRequest = null;
    private static HttpServletResponse httpServletResponse = null;
    //表
    private static ProductDao pDao = new ProductDao();//商品表
    private static OrderDao orderDao = new OrderDao();//订单表
    private static NewsDao newsDao = new NewsDao();//新闻表
    private static UserDao userDao = new UserDao();//用户表
    private static UserAddressDao addressDao = new UserAddressDao();//用户地址表
    private static ProductDao productDao = new ProductDao();//商品表
    //分页
    private static final int eachPage = 10;//每次分几页
    private static final int maxNewsRow = newsDao.maxRow();//新闻最大行数
    private static final int maxUserListRow = userDao.maxRow();//用户最大行数
    private static int maxOrderListRow = 0;//订单最大行数
    private static final int maxProductListRow = productDao.maxRow();//商品最大行数

    public static int getEachPage() {
        return eachPage;
    }

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
        if ("backstage".equals(method) || "memberOrder".equals(method)
                || "memberOrderList".equals(method) || "memberNews".equals(method)
                || "memberUser".equals(method) || "memberUserList".equals(method)
                || "memberProductCategoryList".equals(method)
                || "memberProductListLeft".equals(method)
                || "memberProductAdd".equals(method)
        ) {
            select(req, resp);
            if ("backstage".equals(method)) {//后台首页
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
            if ("memberProductCategoryList".equals(method)) {//商品分类管理
                resp.sendRedirect("Member/memberProductCategoryList.jsp");
            }
            if ("memberProductListLeft".equals(method)) {//商品管理
                resp.sendRedirect("Member/memberProductList.jsp");
            }
            if ("memberProductAdd".equals(method)) {//商品上架
                resp.sendRedirect("Member/memberProductAdd.jsp");
            }
        }
        if ("member".equals(method)) {
            System.out.println("后台页面");
            resp.sendRedirect("Member/member.jsp");
        }//添加成功后跳转页面
        if ("memberProductList".equals(method)) {
            session.setAttribute("pSelect", pDao.selectAll(1,eachPage));
            printWriter.write("<script>location.href='/ning.ying/Member/memberProductList.jsp';</script>");
        }
    }

    private void select(HttpServletRequest req, HttpServletResponse resp) {
        //加载固定列表
        // 单个用户
        Object obj = req.getSession().getAttribute("eabyUser");//user 来自 UserServlet.java login()
        EabyUser user = (EabyUser) obj;

        //用户地址 //根据用户id查询所有用户地址，默认地址排在前面
        List<EabyUserAddress> list = addressDao.queryByUserId(user.getId());
        session.setAttribute("eabyOrder", list);

        //加载查询商品表
        List<EabyProduct> pSelect = pDao.selectAll(1, eachPage);
        session.setAttribute("pSelect", pSelect);
        int eventualProductList = maxProductListRow % eachPage == 0 ? maxProductListRow / eachPage : maxProductListRow / eachPage + 1;
        session.setAttribute("eventualProductList", eventualProductList);//分多少页
        session.setAttribute("oneProductList", 1);//起始页

        //加载商品分类


        //用户订单
        List<EabyOrder> eabyOrderList = orderDao.getUserOrder(user.getId(), 1, eachPage);
        session.setAttribute("getUserOrder", eabyOrderList);
        maxOrderListRow = orderDao.maxRow(user.getId());
        int eventualOrderList = maxOrderListRow % eachPage == 0 ? maxOrderListRow / eachPage : maxOrderListRow / eachPage + 1;
        session.setAttribute("eventualOrderList", eventualOrderList);//最终页数
        session.setAttribute("onePageOrderList", 1);//改变起始页数

        //用户所有订单
        List<EabyOrder> OrderListAll = orderDao.getUserOrder(1, eachPage);
        session.setAttribute("OrderListAll", OrderListAll);
        maxOrderListRow = orderDao.maxRow();
        eventualOrderList = maxOrderListRow % eachPage == 0 ? maxOrderListRow / eachPage : maxOrderListRow / eachPage + 1;
        session.setAttribute("eventualOrderAllList", eventualOrderList);//最终页数
        session.setAttribute("onePageOrderAllList", 1);//改变起始页数

        //所有新闻
        List<EabyNews> newsAll = newsDao.getNewsAll(1, eachPage);
        session.setAttribute("newsAll", newsAll);
        //所有新闻最终分几页
        int eventualLimit = maxNewsRow % eachPage == 0 ? maxNewsRow / eachPage : maxNewsRow / eachPage + 1;
        session.setAttribute("eventualLimit", eventualLimit);//最终页数
        session.setAttribute("onePage", 1);//改变起始页数

        //用户列表
        List<EabyUser> userList = userDao.selectUser(1, eachPage);
        session.setAttribute("userList", userList);
        //用户列表最终分几页
        int eventualUserList = maxUserListRow % eachPage == 0 ? maxUserListRow / eachPage : maxUserListRow / eachPage + 1;
        session.setAttribute("eventualUserList", eventualUserList);//最终页数
        session.setAttribute("onePageUserList", 1);//改变起始页数
    }
}
