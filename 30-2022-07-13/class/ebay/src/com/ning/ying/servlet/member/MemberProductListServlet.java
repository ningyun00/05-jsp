package com.ning.ying.servlet.member;

import com.google.gson.Gson;
import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyOrder;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 商品列表服务
 */
@WebServlet(name = "MemberProductListServlet", value = "/MemberProductListServlet")
public class MemberProductListServlet extends HttpServlet {
    private static ProductDao productDao = new ProductDao();
    private static final int maxRow = productDao.maxRow();
    private static final int eachPage = MemberServlet.getEachPage();
    private static PrintWriter printWriter = null;
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
        printWriter = response.getWriter();
        httpSession = request.getSession();
        if ("nextPage".equals(method)) {//下一页
            page(request, response);
        }
        if ("onPage".equals(method)) {//上一页
            page(request, response);
        }
        if ("delete".equals(method)) {//删除
            delete(request, response);
        }
        if ("updateProduct".equals(method)) {//查询修改商品
            updateProduct(request, response);
        }
        if ("update".equals(method)) {//修改商品
            update(request, response);
        }
    }

    /**
     * 修改商品
     */
    private void update(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int pId = Integer.parseInt(req.getParameter("pId"));
            String pName = req.getParameter("pName");
            String pDescription = req.getParameter("pDescription");
            double pPrice = Double.parseDouble(req.getParameter("pPrice"));
            int pStock = Integer.parseInt(req.getParameter("pStock"));
            int isDelete = Integer.parseInt(req.getParameter("isDelete"));
            int isHot = Integer.parseInt(req.getParameter("isHot"));
            int isSale = Integer.parseInt(req.getParameter("isSale"));
            String pDetailed = req.getParameter("pDetailed");
            EabyProduct product = new EabyProduct();
            product.setId(pId);
            product.setName(pName);
            product.setDescription(pDescription);
            product.setPrice(pPrice);
            product.setStock(pStock);
            product.setIsDelete(isDelete);
            product.setIsHot(isHot);
            product.setIsSale(isSale);
            product.setDetailed(pDetailed);
            if (new ProductDao().update(product)>0){
                printWriter.write("<script>alert('修改成功');location.href='/ning.ying/MemberServlet?method=memberProductListLeft';</script>");
            }else{
                printWriter.write("<script>alert('修改失败');location.href='/ning.ying/MemberServlet?method=memberProductListLeft';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 查询修改商品
     */
    private void updateProduct(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int id = Integer.parseInt(req.getParameter("pId"));
            EabyProduct product = new ProductDao().queryById(id);
            Gson gson = new Gson();
            String json = gson.toJson(product);
            resp.getWriter().write(json);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 删除商品
     */
    private void delete(HttpServletRequest req, HttpServletResponse resp) {
        try {
            int id = Integer.parseInt(req.getParameter("id"));
            int row = new ProductDao().delete(id);
            if (row > 0) {
                printWriter.write("<script>alert('删除成功');location.href='/ning.ying/MemberServlet?method=memberProductListLeft';</script>");
            } else {
                printWriter.write("<script>alert('删除失败');location.href='/ning.ying/MemberServlet?method=memberProductListLeft';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
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
