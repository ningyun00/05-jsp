package com.ning.ying.servlet;

import com.google.gson.Gson;
import com.ning.ying.dao.ProductDao;
import com.ning.ying.dao.UserAddressDao;
import com.ning.ying.entity.EabyProduct;
import com.ning.ying.entity.EabyUser;
import com.ning.ying.entity.EabyUserAddress;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

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
        PrintWriter printWriter = resp.getWriter();
        if ("twoClass".equals(method) || "threeClass".equals(method)) {
            queryProByCategory(req, resp);
        } else if ("queryById".equals(method)) {
            queryById(req, resp);
        } else if ("closees".equals(method)) {
            Cookie newCookie = new Cookie("historyProduct2", null);
            newCookie.setMaxAge(0);
            newCookie.setPath("/");
            resp.addCookie(newCookie);
            req.getRequestDispatcher("IndexServlet").forward(req, resp);
        } else if ("addCar".equals(method)) {//添加购物车
            addCar(req, resp);
        } else if ("refreshCar".equals(method)) {//刷新右上角 购物车
            refreshCar(req, resp);
        } else if ("buyCarSum".equals(method)) {//看是否登录才进入购物车
            HttpSession session = req.getSession();
            if (session.getAttribute("eabyUser") == null) {
                printWriter.write("<script>alert('请先登录');location.href='login.jsp';</script>");
            } else {
                printWriter.write("<script>location.href='buyCar.jsp';</script>");
            }
        } else if ("delShopCar".equals(method)) {//删除购物车
            delShopCar(req, resp);
        } else if ("buyCarTwo".equals(method)) {
            buyCarTwo(req, resp);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    /**
     * 确认生成订单信息
     */
    private void buyCarTwo(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            HttpSession session = req.getSession();
            //实例数据//http://localhost:8080/ning.ying/ProductServlet?method=buyCarTwo&number=3&number0=4&money0=608.00&number1=1&money1=152.0&number2=1&money2=152.0
            int numberle = Integer.parseInt(req.getParameter("number"));//商品条数
            Map<String, Integer> mapNumber = new HashMap<String, Integer>();
            Map<String, Double> mapMoney = new HashMap<String, Double>();
            double sumMoneyEnd = 0;
            for (int i = 0; i < numberle; i++) {
                int numberInt = Integer.parseInt(req.getParameter("number" + i));
                mapNumber.put("number" + i, numberInt);

                double money = Double.parseDouble(req.getParameter("money" + i));
                mapMoney.put("money" + i, money);
                sumMoneyEnd += money;
                System.out.println(req.getParameter("number" + i) + "======" + req.getParameter("money" + i));

                System.out.println(mapNumber);
                System.out.println(mapMoney);
                System.out.println(sumMoneyEnd);
            }
            System.out.println(sumMoneyEnd);
            session.setAttribute("sumMoneyEnd",sumMoneyEnd);
            session.setAttribute("mapNumber", mapNumber);
            session.setAttribute("mapMoney", mapMoney);

            Object obj = req.getSession().getAttribute("eabyUser");//user 来自 UserServlet.java login()
            EabyUser user = (EabyUser) obj;

            //根据用户id查询所有用户地址，默认地址排在前面
            UserAddressDao addressDao = new UserAddressDao();
            List<EabyUserAddress> list = addressDao.queryByUserId(user.getId());
            for(EabyUserAddress ea: list){
                session.setAttribute("es",ea.getId());
            }
            session.setAttribute("eabyOrder",list);
            req.setAttribute("alist", list);
            req.getRequestDispatcher("buyCarTwo.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * 删除购物车
     */
    private void delShopCar(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //获取要删除的商品id
        Object pid = req.getParameter("pid");
        System.out.println(pid);
        //取出购物车
        HttpSession session = req.getSession();
        Map<String, EabyProduct> shopCart = (Map<String, EabyProduct>) session.getAttribute("shopCar");
        System.out.println(shopCart);
        System.out.println(shopCart.get(pid));
        System.out.println(shopCart.values());
        System.out.println(shopCart.containsKey(pid));
        if (shopCart.containsKey(pid)) {
            System.out.println("==============");
            shopCart.remove(pid, shopCart.get(pid));
            Collection<EabyProduct> list = shopCart.values();
            double sum = 0;
            for (EabyProduct p : list) {
                sum += p.getPrice() * p.getCount();
            }
            //重新保存
            session.setAttribute("shopCart", shopCart);
            session.setAttribute("shopCartList", list);
            session.setAttribute("carSum", sum);
        }

        resp.sendRedirect("buyCar.jsp");
    }

    /**
     * 刷新购物车
     */
    private void refreshCar(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Object list = req.getSession().getAttribute("shopCarList");
        Gson gson = new Gson();
        String json = gson.toJson(list);
        resp.getWriter().print(json);
    }

    /**
     * 添加购物车
     */
    private void addCar(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int pid = Integer.parseInt(req.getParameter("pid"));//获取编号
        int count = Integer.parseInt(req.getParameter("count"));//获取购买数量
        HttpSession session = req.getSession();
        Map<String, EabyProduct> shopCar = null;
        if (session.getAttribute("shopCar") == null) {
            shopCar = new HashMap<String, EabyProduct>();
        } else {
            shopCar = (Map<String, EabyProduct>) session.getAttribute("shopCar");//购物车集合的session添加进去
        }
        if (shopCar.containsKey(pid + "")) {//判断是否含有指定键名
            EabyProduct product = shopCar.get(pid + "");
            product.setCount(product.getCount() + count);
        } else {
            ProductDao productDao = new ProductDao();
            EabyProduct eabyProduct = productDao.queryById(pid);
            eabyProduct.setCount(count);
            shopCar.put(pid + "", eabyProduct);
        }
        session.setAttribute("shopCar", shopCar);
        Collection<EabyProduct> shopCarList = shopCar.values();
        double sum = 0;
        for (EabyProduct eabyProduct : shopCarList) {
            sum += eabyProduct.getCount() * eabyProduct.getPrice();
        }
        session.setAttribute("carSum", sum);
        session.setAttribute("shopCarList", shopCarList);
        PrintWriter printWriter = resp.getWriter();
        String jsonStr = "{\"count\":" + shopCar.size() + ",\"sum\":" + sum + "}";
        printWriter.write(jsonStr);
    }

    /**
     * 根据商品id查询单个商品
     */
    private void queryById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //①、获取商品id
        int pid = Integer.parseInt(req.getParameter("pid"));

        //②、dao层查询商品信息
        ProductDao pDao = new ProductDao();
        EabyProduct product = pDao.queryById(pid);


        //保存浏览记录     sql      in(733,735,738,734...)
        //把商品id保存在cookie中 ，用于产生浏览记录，保存格式：拼接商品id(733,735,738,734..)
        //1.先把原来的cookie取出，判断是否有存在的浏览记录
        Cookie[] cookies = req.getCookies();
        String valueStr = "";
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if ("historyProduct2".equals(cookies[i].getName())) {
                    valueStr = cookies[i].getValue();
                    //2.已经存在浏览记录，则限制最大浏览记录条数
                    // 方式：如果长度==10,则取出最后一条，再把新的拼接
                    if (valueStr.split(",").length == 10) {
                        valueStr = valueStr.substring(0, valueStr.lastIndexOf(","));
                    }
                }
            }
        }
        //3.如果cookie中取出的value是空的，则直接拼接商品id
        if ("".equals(valueStr)) {
            valueStr += pid;//直接拼接商品id
        } else {
            valueStr = pid + "," + valueStr;//把新的pid拼接
        }
        //4.创建cookie对象，并存值（key不能重复，值只能保存字符串）,保存到响应中让浏览器保存
        Cookie cookie = new Cookie("historyProduct2", valueStr);
        //设置cookie有效时间（单位：秒）
        cookie.setMaxAge(60 * 60 * 24 * 3);//3天
        //把cookie响应给客户端(cookie存到响应对象中---响应给浏览器---浏览器保存到文件)
        resp.addCookie(cookie);//保存到cookie中,把cookie对象交给响应对象


        //③、保存信息，再请求转发
        req.setAttribute("product", product);
        //④、请求转发,正常跳转到商品详情，显示当前查询商品信息
        req.getRequestDispatcher("product.jsp").forward(req, resp);

    }

    /**
     * 根据商品分类查询商品集合
     */
    private void queryProByCategory(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //①获取分类id 和 分类级别
        int cid = Integer.parseInt(req.getParameter("cid"));
        int level = Integer.parseInt(req.getParameter("level"));

        //②默认当前页为1，每页行数为20
        int size = 20;
        int page = 1;
        if (req.getParameter("page") != null) {
            page = Integer.parseInt(req.getParameter("page"));
        }

        //③查询商品集合
        ProductDao pDao = new ProductDao();
        List<EabyProduct> plist = pDao.queryByCategory1Id(level, cid, page, size);
        //④保存信息，再请求转发
        req.setAttribute("plist", plist);
        req.setAttribute("size", plist.size());
        req.setAttribute("cname", req.getParameter("cname"));
        //1.查询浏览记录
        List<EabyProduct> hisTorylist = new ArrayList<EabyProduct>();
        Cookie[] cookies = req.getCookies();
        if (cookies != null) {
            for (int i = 0; i < cookies.length; i++) {
                if ("historyProduct2".equals(cookies[i].getName())) {
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
        req.getRequestDispatcher("categoryList.jsp").forward(req, resp);
    }

}
