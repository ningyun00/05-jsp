package com.ning.ying.servlet.member;

import com.google.gson.Gson;
import com.ning.ying.dao.CategoryDao;
import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyProductCategory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 后台添加商品上架
 */
@WebServlet(name = "MemberProductAddServlet", value = "/MemberProductAddServlet")
public class MemberProductAddServlet extends HttpServlet {
    private static PrintWriter printWriter = null;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MemberProductAddServlet (后台添加商品服务) service (服务)");
        printWriter = response.getWriter();
        String method = request.getParameter("method");
        if ("categoryLevel1Id".equals(method)) {
            queryLevel1Id(request, response);
        }
        if ("queryCategory2".equals(method)) {
            queryLevel2Id(request, response);
        }
        if ("queryCategory3".equals(method)) {
            queryLevel3Id(request, response);
        }
        if ("memberProductAdd".equals(method)) {
            productAdd(request, response);
        }
    }

    /**
     * 添加商品上架
     */
    private static void productAdd(HttpServletRequest request, HttpServletResponse response) {
        System.out.println("productAdd (添加商品上架)");
        int level1Id = Integer.parseInt(request.getParameter("categoryLevel1Id"));//一级
        int level2Id = Integer.parseInt(request.getParameter("categoryLevel2Id"));//二级
        int level3Id = Integer.parseInt(request.getParameter("categoryLevel3Id"));//三级
        String name = request.getParameter("name");//商品名称
        String fileName = request.getParameter("fileName");//商品介绍
        double price = Double.parseDouble(request.getParameter("price"));//商品价格
        int stock = Integer.parseInt(request.getParameter("stock"));//商品库存
        String description = request.getParameter("description");//商品描述
        int isHot = Integer.parseInt(request.getParameter("isHot"));//是否特卖
        int isSale = Integer.parseInt(request.getParameter("isSale"));//是否特价
        System.out.println(level1Id+""+level2Id+""+level3Id+""+name+""+fileName+""+price+""+stock+""+description+""+isHot+""+isSale);
        if (level1Id != 0 && level2Id != 0 && level3Id != 0) {//添加最后一级商品
            EabyProduct ep = new EabyProduct();
            ep.setName(name);
            ep.setDescription(description);
            ep.setPrice(price);
            ep.setStock(stock);
            ep.setCategoryLevel1Id(level1Id);
            ep.setCategoryLevel2Id(level2Id);
            ep.setCategoryLevel3Id(level3Id);
            ep.setFileName(fileName);
            ep.setIsHot(isHot);
            ep.setIsSale(isSale);
            ProductDao pDao = new ProductDao();
            if (pDao.add(ep)>0){
                printWriter.write("<script>alert('添加成功');location.href='/ning.ying/MemberServlet?method=memberProductList';</script>");
            }else{
                printWriter.write("<script>alert('添加失败');location.href='/ning.ying/MemberServlet?method=memberProductList';</script>");
            }
        }
    }

    /**
     * 一级分类
     */
    private static void queryLevel1Id(HttpServletRequest request, HttpServletResponse response) {
        //查询一级分类
        CategoryDao cDao = new CategoryDao();
        List<EabyProductCategory> list = cDao.queryLevelList(1);
        //转成json
        Gson g = new Gson();
        String json = g.toJson(list);
        printWriter.print(json);
    }

    /**
     * 二级分类
     */
    private static void queryLevel2Id(HttpServletRequest request, HttpServletResponse response) {
        //根据一级分类，获取二级分类
        int c1 = Integer.parseInt(request.getParameter("c1"));
        //查询二级分类
        CategoryDao cDao = new CategoryDao();
        List<EabyProductCategory> list = cDao.queryLevelList(2, c1);
        //转成json
        Gson g = new Gson();
        String json = g.toJson(list);
        printWriter.print(json);
    }

    /**
     * 三级分类
     */
    private static void queryLevel3Id(HttpServletRequest request, HttpServletResponse response) {
        //根据二级分类，获取三级分类
        int c2 = Integer.parseInt(request.getParameter("c2"));
        //查询三级分类
        CategoryDao cDao = new CategoryDao();
        List<EabyProductCategory> list = cDao.queryLevelList(3, c2);
        //转成json
        Gson g = new Gson();
        String json = g.toJson(list);
        printWriter.print(json);
    }
}
