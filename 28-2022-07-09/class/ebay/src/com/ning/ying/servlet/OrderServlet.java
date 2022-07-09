package com.ning.ying.servlet;

import com.ning.ying.dao.OrderDao;
import com.ning.ying.dao.UserAddressDao;
import com.ning.ying.entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("OrderServlet (订单) doGet (get方法)");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("OrderServlet (订单) doPost (post方法)");
    }

    /**
     * 生成订单
     */
    private void createOrder(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        System.out.println("OrderServlet (订单服务) createOrder (创建订单)");
        HttpSession session = req.getSession();
        PrintWriter printWriter = resp.getWriter();
        //取当前登录的用户信息  UserServlet.java Login()
        EabyUser user = (EabyUser) session.getAttribute("eabyUser");
        String address = "";
        System.out.println(req.getParameter("oldaddress") + "=====");
        if ("".equals(req.getParameter("oldaddress"))){
            address = req.getParameter("newaddress");
            System.out.println("新增地址" + address);
            EabyUserAddress eua = new EabyUserAddress();
            eua.setUserId(user.getId());
            eua.setAddress(address);
            eua.setCreateTime(new Date());
            eua.setIsDefault(1);
            eua.setRemark(req.getParameter("remark"));
            UserAddressDao uaDao = new UserAddressDao();
            int row = uaDao.queryByUserId(eua);
            System.out.println("添加地址是否成功:" + row);
        } else{
            address = req.getParameter("oldaddress");
            System.out.println("旧地址:" + address);
        }
        double sum = (Double) session.getAttribute("sumMoneyEnd");
        EabyOrder order = new EabyOrder();
        order.setUserId(user.getId());
        order.setLoginName(user.getLoginName());
        order.setUserAddress(address);
        order.setCreateTime(new Date());
        order.setCost(sum);
        System.out.println(sum);
        order.setStatus(1);
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddhhmmss");
        String dateF = simpleDateFormat.format(date);
        //订单号
        String numberS = dateF + user.getId() + session.getAttribute("es");
        numberS = ten(numberS);
        order.setSerialNumber(numberS);

        OrderDao orderDao = new OrderDao();
        int row = orderDao.addOrder(order);
        if (row > 0) {
            //添加订单成功
            int oid = orderDao.getMaxId();
            Collection<EabyProduct> list = (Collection<EabyProduct>) session.getAttribute("shopCarList");
            for (EabyProduct p : list) {
                EabyOrderDetail od = new EabyOrderDetail();
                od.setOrderId(oid);
                od.setProductId(p.getId());
                od.setQuantity(p.getCount());
                od.setCost(p.getCount() * p.getPrice());
            }
            //编号
            session.setAttribute("SerialNumber", numberS);
            //总价格
            session.setAttribute("sumMoneys", order.getCost());
            //清除购物车
            session.setAttribute("shopCar", null);
            session.setAttribute("shopCarList", null);
            session.setAttribute("carSum", null);

            resp.sendRedirect("buyCarThree.jsp");
        } else {
            //订单生成失败
            printWriter.write("<script>alert('订单生成失败！请重试或联系系统管理员');location.href='IndexServlet';</script>");
        }
    }

    /**
     * 将订单号转成8进制
     */
    private static String ten(String s) {
        System.out.println(s);
        String str = s;
        String str1 = str;
        str1 = str1.substring(0, 4);
        System.out.println(str1);
        str = str.replaceAll(str1, "");
        System.out.println(str);
        char[] strChar = str.toCharArray();
        String result = str1;
        for (int i = 0; i < strChar.length; i++) {
            result += Integer.toOctalString(strChar[i]);
        }
       return result;
    }
}
