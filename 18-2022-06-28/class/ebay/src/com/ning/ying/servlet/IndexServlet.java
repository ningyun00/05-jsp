package com.ning.ying.servlet;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyNews;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyProductCategory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 主界面
 */
@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("IndexServlet (主界面) service (服务)");
        ProductDao productDao = new ProductDao();
        //一级菜单
        List<EabyProductCategory> ProductCategoryList1 = productDao.productType(1);
        List<EabyProductCategory> ProductCategoryList2 = productDao.productType(2);
        List<EabyProductCategory> ProductCategoryList3 = productDao.productType(3);
        req.setAttribute("ProductCategoryList1", ProductCategoryList1);
        req.setAttribute("ProductCategoryList2", ProductCategoryList2);
        req.setAttribute("ProductCategoryList3", ProductCategoryList3);
        //新闻
        List<EabyNews> eabyNews = productDao.news();
        req.setAttribute("eabyNews", eabyNews);

        //热门
        List<EabyProduct> eabyProductListHot = productDao.selectHot();
        req.setAttribute("eabyProductListHot", eabyProductListHot);
        //限时特卖
        List<EabyProduct> eabyProductListSell = productDao.selectSell();
        req.setAttribute("eabyProductListSell", eabyProductListSell);

        //各大分类商品展示
        List<EabyProduct> listType660 = productDao.queryByCategoryLevel1Id(660);//一级分类商品
        List<EabyProduct> listType676 = productDao.queryByCategoryLevel1Id(676);//一级分类商品
        List<EabyProduct> listType548 = productDao.queryByCategoryLevel1Id(548);//一级分类商品
        List<EabyProduct> listType628 = productDao.queryByCategoryLevel1Id(628);//一级分类商品
        List<EabyProduct> listType681 = productDao.queryByCategoryLevel1Id(681);//一级分类商品
        List<EabyProduct> listType670 = productDao.queryByCategoryLevel1Id(670);//一级分类商品
        req.setAttribute("listType660", listType660);
        req.setAttribute("listType676", listType676);
        req.setAttribute("listType548", listType548);
        req.setAttribute("listType628", listType628);
        req.setAttribute("listType681", listType681);
        req.setAttribute("listType670", listType670);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
