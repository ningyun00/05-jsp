package com.ning.ying.servlet.member;

import com.ning.ying.dao.BaseDao;
import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyProductCategory;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
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
        if ("onPage".equals(method)) {
            page(request, response);
        }
        if ("updateC".equals(method)) {
            select(request, response);
        }
        if ("update".equals(method)) {
            update(request, response);
        }
    }

    /**
     * 修改商品分类名称
     */
    private void update(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("userName2");
        String id = req.getParameter("id");
        EabyProductCategory eabyProductCategory = new EabyProductCategory();
        eabyProductCategory.setName(name);
        eabyProductCategory.setId(Integer.parseInt(id));
        PrintWriter printWriter = resp.getWriter();
        if (new ProductDao().categoryUpdate(eabyProductCategory)>0){
            printWriter.write("<script>alert('修改成功');location.href='"+MemberServlet.PATH+"/MemberServlet?method=memberProductCategoryList';</script>");
        }else{
            printWriter.write("<script>alert('修改失败');location.href='"+MemberServlet.PATH+"/MemberServlet?method=memberProductCategoryList';</script>");
        }
    }

    /**
     * 根据编号查询商品分类
     */
    private void select(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String CID = req.getParameter("CID");
        EabyProductCategory eabyProductCategory = productDao.selectCID(Integer.parseInt(CID));
        PrintWriter printWriter = resp.getWriter();
        printWriter.write(eabyProductCategory.getName());
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
