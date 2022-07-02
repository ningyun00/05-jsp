package com.ning.ying.servlet.member;

import com.google.gson.Gson;
import com.jspsmart.upload.File;
import com.jspsmart.upload.Files;
import com.jspsmart.upload.SmartUpload;
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
import java.text.SimpleDateFormat;
import java.util.Date;
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
        if ("categoryLevel1Id".equals(method)) {//查询商品1级分类
            queryLevel1Id(request, response);
        }
        if ("queryCategory2".equals(method)) {//查询商品二级分类
            queryLevel2Id(request, response);
        }
        if ("queryCategory3".equals(method)) {//查询商品三级分类
            queryLevel3Id(request, response);
        }
        if ("memberProductAdd".equals(method)) {//添加商品
            productAdd(request, response);
        }
    }

    /**
     * 添加商品上架
     */
    private void productAdd(HttpServletRequest request, HttpServletResponse response) throws ServletException {
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
        String context = request.getParameter("context");//获取富文本域内容

        System.out.println(level1Id + "" + level2Id + "" + level3Id + "" + name + "" + fileName + "" + price + "" + stock + "" + description + "" + isHot + "" + isSale + "" + context);

/*        //获取图片上传
        SmartUpload smartUpload = new SmartUpload();
        //2.设置属性
        //设置编码方式
        smartUpload.setCharset("utf-8");
        //设置可上传图片的类型
        smartUpload.setAllowedFilesList("jpg,bmp,png");
        //设置可上传图片的最大值(单位是字节)
        smartUpload.setMaxFileSize(1024 * 1024 * 10);//10M
        //3.准备上传工作
        smartUpload.initialize(this.getServletConfig(), request, response);


        String addFileName = "";
        try {
            //4.正式上传
            smartUpload.upload();
            //5.smart中获取上传的图片
            Files files = smartUpload.getFiles();
            File file = files.getFile(0);//获取第一张图片（实际我们只有一张）
            //6.改名;文件名称格式：生成的日期字符串+原本图片的后缀名
            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
            String format = sdf.format(date);
            addFileName=format+"."+file.getFileExt();
            String path = request.getServletContext().getRealPath("/");//获取路径
            //D:\workspace\Project\WebEaby\out\artifacts\EabyModule_war_exploded\
            path = path.substring(0,"E:\\S2\\05-jsp\\21-2022-07-01\\class\\ebay".length());//截取路径
            path = path+"web\\images";//补充路径
            System.out.println("测试输出上传文件的路径："+path+addFileName);//测试打印
            file.saveAs(path+addFileName);//保存

        } catch (Exception e) {
            e.printStackTrace();
        }*/
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
            ep.setDetailed(context);

            ProductDao pDao = new ProductDao();
            if (pDao.add(ep) > 0) {
                printWriter.write("<script>alert('添加成功');location.href='/ning.ying/MemberServlet?method=memberProductList';</script>");
            } else {
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
