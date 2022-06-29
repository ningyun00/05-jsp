package com.ning.ying.servlet.member;

import com.google.gson.Gson;
import com.ning.ying.dao.CategoryDao;
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
    }

    private static void queryLevel1Id(HttpServletRequest request, HttpServletResponse response) {
        //查询一级分类
        CategoryDao cDao = new CategoryDao();
        List<EabyProductCategory> list = cDao.queryLevelList(1);
        //转成json
        Gson g = new Gson();
        String json = g.toJson(list);
        printWriter.print(json);
    }

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
