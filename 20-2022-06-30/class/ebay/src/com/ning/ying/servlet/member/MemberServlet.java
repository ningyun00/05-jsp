package com.ning.ying.servlet.member;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.dao.UserAddressDao;
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

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();//响应写出
        session = req.getSession();//获取session
        httpServletRequest = req;
        httpServletResponse = resp;
        System.out.println("MemberServlet (后台服务) service (服务)");
        String method = req.getParameter("method");
        ProductDao pDao = new ProductDao();
        if ("backstage".equals(method)||"myOrder".equals(method)) {
            //加载固定列表
            session.setAttribute("pSelect", pDao.selectAll());//加载查询商品表
            Object obj = req.getSession().getAttribute("eabyUser");//user 来自 UserServlet.java login()
            EabyUser user = (EabyUser) obj;
            //根据用户id查询所有用户地址，默认地址排在前面
            UserAddressDao addressDao = new UserAddressDao();
            List<EabyUserAddress> list = addressDao.queryByUserId(user.getId());
            session.setAttribute("eabyOrder",list);
            if ("backstage".equals(method)){
                resp.sendRedirect("Member/member.jsp");
            }
            if ("myOrder".equals(method)){
                resp.sendRedirect("Member/memberOrder.jsp");
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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
