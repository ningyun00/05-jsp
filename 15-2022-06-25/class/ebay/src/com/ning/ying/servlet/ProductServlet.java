package com.ning.ying.servlet;

import com.ning.ying.dao.ProductDao;
import com.ning.ying.entity.EabyProduct;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 商品服务
 */
@WebServlet(name = "ProductServlet", value = "/ProductServlet")
public class ProductServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("ProductServlet 商品服务 service(服务)");
        //获取jsp页面传过来的参数
        String method = req.getParameter("method");
        if ("".equals(method)){

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
    /** 根据商品分类查询商品集合 */
    private void queryProByCategory(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //①获取分类id 和 分类级别
        int cid=Integer.parseInt(req.getParameter("cid"));
        int level=Integer.parseInt(req.getParameter("level"));

        //②默认当前页为1，每页行数为20
        int size=20;
        int page=1;
        if(req.getParameter("page")!=null){
            page=Integer.parseInt(req.getParameter("page"));
        }

        //③查询商品集合
        ProductDao pDao=new ProductDao();
        List<EabyProduct> plist = pDao.queryByCategory1Id(level, cid, page, size);
        //④保存信息，再请求转发
        req.setAttribute("plist", plist);
        req.setAttribute("size", plist.size());
        req.setAttribute("cname", req.getParameter("cname"));
        //1.查询浏览记录
        List<EabyProduct> hisTorylist =new ArrayList<EabyProduct>();
        Cookie[] cookies = req.getCookies();
        if(cookies!=null){
            for (int i = 0; i < cookies.length; i++) {
                if("historyProduct".equals(cookies[i].getName())){
                    //存值模式：733,735,738,734...    sql   in(733,735,738,734...)
                    String pid = cookies[i].getValue();
                    //System.out.println("浏览记录："+value);
                    //通过cookie中存的商品id 去数据库查询商品集合
                    hisTorylist = pDao.queryHistory(pid);
                }
            }
        }
        //2.查询到的浏览记录,存入到requset
        req.setAttribute("hisTorylist", hisTorylist);
        //⑤请求转发,正常跳转到商品集合,显示当前查询商品集合
        req.getRequestDispatcher("categorylist.jsp").forward(req, resp);
    }

}
