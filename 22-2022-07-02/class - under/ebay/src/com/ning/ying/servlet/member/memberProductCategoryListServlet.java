package com.ning.ying.servlet.member;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyProductCategory;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

/**
 * 商品分类分类管理
 */
@WebServlet(name = "memberProductCategoryListServlet", value = "/memberProductCategoryListServlet")
public class memberProductCategoryListServlet extends HttpServlet {
    private static HttpSession httpSession = null;
    private static ProductDao productDao = new ProductDao();
    private static final int maxRow = productDao.maxRowCategory();
    private static final int eachPage = MemberServlet.getEachPage();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("memberProductCategoryListServlet (商品分类服务) service (服务)");
        String method = request.getParameter("method");
        httpSession = request.getSession();
        if ("nextPage".equals(method)) {
            page(request, response);
        }
        if ("onPage".equals(method)){
            page(request, response);
        }
    }

    /**
     * 翻页
     */
    private void page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  最终分页多少次     多少行    每次几行
        int eventualCategory = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        int oneCategory = Integer.parseInt(req.getParameter("pageNext"));//获取第几页
        List<EabyProductCategory> productCategoryList = productDao.getCategoryList(oneCategory, eachPage);
        httpSession.setAttribute("oneCategory", oneCategory);//改变起始页数
        httpSession.setAttribute("productCategoryList", productCategoryList);//改变
        httpSession.setAttribute("eventualCategory", eventualCategory);//最终页数
        resp.sendRedirect("Member/memberProductCategoryList.jsp");//跳转
    }
}
