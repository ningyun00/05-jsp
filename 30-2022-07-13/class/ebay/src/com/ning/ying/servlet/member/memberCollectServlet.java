package com.ning.ying.servlet.member;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyProduct;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "memberCollectServlet", value = "/memberCollectServlet")
public class memberCollectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter printWriter = response.getWriter();
        System.out.println("memberCollectServlet (商品收藏服务)  service (服务)");
        String method = request.getParameter("method");
        if ("memberCollectServlet".equals(method)) {
            addCollect(request, response);
            response.sendRedirect("/ning.ying/Member/memberCollect.jsp");
        }
        if ("failure".equals(method)) {
            addCollect(request, response);
            printWriter.write("<script>alert('收藏以存在');location.href='/ning.ying/Member/memberCollect.jsp';</script>");
        }
    }

    /**
     * 添加商品收藏展示
     */
    private void addCollect(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session = req.getSession();
        Cookie[] cookies = req.getCookies();
        System.out.println(req.getParameter("CoId"));
        for (Cookie c : cookies) {
            if ("CollectId".equals(c.getName())) {
                List<EabyProduct> collectProduct = new ProductDao().queryHistory(c.getValue());
                session.setAttribute("collectProduct",collectProduct);
                break;
            }
        }
    }
}
