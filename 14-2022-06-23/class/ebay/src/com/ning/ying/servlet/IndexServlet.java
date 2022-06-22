package com.ning.ying.servlet;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyProduct;

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
        //热门
        List<EabyProduct> eabyProductListHot = productDao.selectHot();
        req.setAttribute("eabyProductListHot", eabyProductListHot);
        //限时特卖
        List<EabyProduct> eabyProductListSell = productDao.selectSell();
        req.setAttribute("eabyProductListSell", eabyProductListSell);
        //进口生鲜
        List<EabyProduct> eabyProductListLevel1Id = productDao.selectLevel1Id();
        req.setAttribute("eabyProductListLevel1Id", eabyProductListLevel1Id);
        //零食饮料
        List<EabyProduct> ListLevel2Id = productDao.selectLevel2Id();
        req.setAttribute("ListLevel2Id", ListLevel2Id);
        //化妆品
        List<EabyProduct> Level1Id3F = productDao.Level1Id3F();
        req.setAttribute("Level1Id3F", Level1Id3F);
        //4F母婴玩具
        List<EabyProduct> Level2Id4F = productDao.Level2Id4F();
        req.setAttribute("Level2Id4F", Level2Id4F);
        //5F家具生活
        List<EabyProduct> Level1Id5F = productDao.Level1Id5F();
        req.setAttribute("Level1Id5F", Level1Id5F);
        //6F数码家电
        List<EabyProduct> Level1Id6F = productDao.Level1Id6F();
        req.setAttribute("Level1Id6F", Level1Id6F);
        //猜你喜欢
        List<EabyProduct> Level3Id = productDao.Level3Id();
        req.setAttribute("Level3Id", Level3Id);

        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
