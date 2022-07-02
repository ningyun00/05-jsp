package com.ning.ying.servlet.member;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

/**
 * 商品列表服务
 */
@WebServlet(name = "MemberProductListServlet", value = "/MemberProductListServlet")
public class MemberProductListServlet extends HttpServlet {
    private static ProductDao productDao = new ProductDao();
    private static final int maxRow = productDao.maxRow();
    private static final int eachPage = MemberServlet.getEachPage();
    private static HttpSession httpSession = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MemberProductListServlet (商品服务) service (服务)");
        String method = request.getParameter("method");
        httpSession = request.getSession();
        if ("nextPage".equals(method)) {
            page(request, response);
        }
        if ("onPage".equals(method)) {
            page(request, response);
        }

    }

    /**
     * 分页
     */
    private void page(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //  最终分页多少次     多少行    每次几行
        int eventualProductList = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        int oneProductList = Integer.parseInt(req.getParameter("pageNext"));//获取第几页
        List<EabyProduct> pSelect = productDao.selectAll(oneProductList, eachPage);//获取第几页的内容
        httpSession.setAttribute("oneProductList", oneProductList);//改变起始页数
        httpSession.setAttribute("pSelect", pSelect);//结果
        httpSession.setAttribute("eventualProductList", eventualProductList);//最终页数
        resp.sendRedirect("Member/memberProductList.jsp");//跳转
    }
}
