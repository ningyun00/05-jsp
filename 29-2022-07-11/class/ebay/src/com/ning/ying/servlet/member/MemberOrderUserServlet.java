package com.ning.ying.servlet.member;

import com.ning.ying.dao.OrderDao;
import com.ning.ying.dao.UserAddressDao;
import com.ning.ying.dao.UserDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyUser;
import com.ning.ying.entity.EabyUserAddress;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.Date;
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
        if ("updateAddress".equals(method)) {//修改地址
            updateAddress(request, response);
        }
        if ("AddAddress".equals(method)) {//添加地址
            AddAddress(request, response);
        }
        if ("Default".equals(method)) {//默认地址
            defaultAddress(request, response);
        }
        if ("deleteAddress".equals(method)) {//删除地址
            deleteAddress(request, response);
        }
    }

    /**
     * 删除地址
     */
    private void deleteAddress(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("AID");
        System.out.println(id);
        PrintWriter printWriter = resp.getWriter();
        if (new UserAddressDao().deleteAddress(Integer.parseInt(id)) > 0) {
            printWriter.write("<script>alert('删除成功');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        } else {
            printWriter.write("<script>alert('删除失败');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        }
    }

    /**
     * 修改默认地址
     */
    private void defaultAddress(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("defaultId");
        EabyUserAddress eua = new EabyUserAddress();
        eua.setId(Integer.parseInt(id));
        int idO = new UserAddressDao().ordinaryAddress();
        System.out.println(idO);
        int i = new UserAddressDao().ordinaryAddress(idO);
        if (i > 0) {
            System.out.println("更改成功" + i);
        }
        int row = new UserAddressDao().updataDefaultAddress(eua);
        System.out.println(row);
        PrintWriter printWriter = resp.getWriter();
        if (row > 0) {
            printWriter.write("修改成功");
        }
    }

    /**
     * 添加收货地址
     */
    private void AddAddress(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("uName");
        String uEmail = req.getParameter("uEmail");
        String uMobile = req.getParameter("uMobile");
        EabyUser eabyUser = new EabyUser();
        eabyUser.setId(Integer.parseInt(id));
        eabyUser.setUserName(name);
        eabyUser.setEmail(uEmail);
        eabyUser.setMobile(uMobile);
        int row1 = new UserDao().updateUserAddress(eabyUser);
        String uAddress = req.getParameter("uAddress");
        String remark = req.getParameter("remark");
        EabyUserAddress eua = new EabyUserAddress();
        eua.setUserId(Integer.parseInt(id));
        eua.setAddress(uAddress);
        eua.setRemark(remark);
        eua.setCreateTime(new Timestamp(new Date().getTime()));
        int row2 = new UserAddressDao().queryByUserId(eua);
        PrintWriter printWriter = resp.getWriter();
        System.out.println(row1 + "  " + row2);
        if (row1 > 0 && row2 > 0) {
            printWriter.write("<script>alert('添加成功');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        } else {
            printWriter.write("<script>alert('添加失败');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        }
    }

    /**
     * 修改地址
     */
    private void updateAddress(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("uName");
        String uEmail = req.getParameter("uEmail");
        String uMobile = req.getParameter("uMobile");
        EabyUser eabyUser = new EabyUser();
        eabyUser.setId(Integer.parseInt(id));
        eabyUser.setUserName(name);
        eabyUser.setEmail(uEmail);
        eabyUser.setMobile(uMobile);
        int row1 = new UserDao().updateUserAddress(eabyUser);
        String aId = req.getParameter("idA");
        String uAddress = req.getParameter("uAddress");
        String remark = req.getParameter("remark");
        EabyUserAddress eua = new EabyUserAddress();
        eua.setId(Integer.parseInt(aId));
        eua.setAddress(uAddress);
        eua.setRemark(remark);
        int row2 = new UserAddressDao().updataUserAddress(eua);
        PrintWriter printWriter = resp.getWriter();
        if (row1 > 0 && row2 > 0) {
            printWriter.write("<script>alert('修改成功');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        } else {
            printWriter.write("<script>alert('修改失败');location.href='/ning.ying/MemberServlet?method=memberUser';</script>");
        }
    }

    /**
     * 更改收货状态
     */
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
