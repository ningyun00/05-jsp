package com.ning.ying.servlet.member;

import com.ning.ying.dao.NewsDao;
import com.ning.ying.entity.EabyNews;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.swing.text.Document;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 新闻服务
 */
@WebServlet(name = "NewsServlet", value = "/NewsServlet")
public class NewsServlet extends HttpServlet {
    private static HttpServletRequest httpServletRequest = null;
    private static HttpServletResponse httpServletResponse = null;
    private static HttpSession httpSession = null;
    private static NewsDao newsDao = new NewsDao();
    private static PrintWriter printWriter = null;
    private static EabyNews eabyNews = new EabyNews();

    /**
     * 每次分几页
     */
    private static final int eachPage = 10;//每次分几页
    private static final int maxRow = newsDao.maxRow();//最大页数

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("NewsServlet (新闻服务) service (服务)");
        //初始化
        httpServletRequest = request;//请求
        httpServletResponse = response;//响应
        httpSession = request.getSession();//服务器存值
        printWriter = response.getWriter();//输出

        String method = request.getParameter("method");
        System.out.println(request.getParameter("method"));

        if ("deleteNews".equals(method)) {//删除新闻
            deleteNews(request, response);
        }
        if ("selectNews".equals(method)) {//查询指定新闻
            selectNews(request, response);
        }
        if ("updateNews".equals(method)) {//修改新闻
            updateNews(request, response);
        }
        if ("nextPage".equals(method)) {//下一页
            Page(request, response);
        }
        if ("onPage".equals(method)) {//上一页
            Page(request, response);
        }
    }

    /**
     * 翻页
     */
    private void Page(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //  最终分页多少次     多少行    每次几行
        int eventualLimit = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        httpSession.setAttribute("eventualLimit", eventualLimit);//最多分几页
        int onePage = Integer.parseInt(req.getParameter("pageNext"));//获取第几页
        List<EabyNews> newsAll = newsDao.getNewsAll(onePage, eachPage);//获取第几页的内容
        httpSession.setAttribute("onePage", onePage);//改变起始页数
        httpSession.setAttribute("newsAll", newsAll);//改变新闻
        httpSession.setAttribute("eventualLimit", eventualLimit);//最终页数
        resp.sendRedirect("Member/memberNewList.jsp");//跳转
    }

    /**
     * 修改指定新闻
     */
    private void updateNews(HttpServletRequest req, HttpServletResponse resp) {
        eabyNews = new EabyNews();//初始化
        eabyNews.setContent(req.getParameter("newsContent"));
        eabyNews.setId(Integer.parseInt(req.getParameter("newsId")));
        if (newsDao.updateNew(eabyNews) > 0) {
            printWriter.write("<script>alert('修改成功');location.href='/ning.ying/MemberServlet?method=memberNews';</script>");
        } else {
            printWriter.write("<script>alert('修改失败');location.href='/ning.ying/MemberServlet?method=memberNews';</script>");
        }
    }

    /**
     * 查询指定新闻
     */
    private void selectNews(HttpServletRequest rep, HttpServletResponse resp) {
        int newId = Integer.parseInt(rep.getParameter("newId"));
        EabyNews newsList = newsDao.selectNew(newId);
        printWriter.write("<tr style='color:red;'>" +
                "<td>" + newsList.getId() + "</td><td>" +
                "<input type = 'text' name='newsContent' style='width: 500px;height:25px' value='" + newsList.getContent() + "'>" +
                "</td><td colspan='2'>" +
                "<button value='" + newsList.getId() + "' name='newsId' form='formNews' style='width: 100px;height: 25px;background-color: #ff4e00; color: black;' onclick=\"return confirm('确认修改？')\">确认修改</button>" +
                "</td></tr>"
        );
    }

    /**
     * 删除新闻
     */
    private void deleteNews(HttpServletRequest req, HttpServletResponse resp) {
        System.out.println(req.getParameter("newId"));
        int newId = Integer.parseInt(req.getParameter("newId"));
        if (newsDao.deleteNew(newId) > 0) {
            printWriter.write("<script>alert('删除成功');location.href='/ning.ying/MemberServlet?method=memberNews';</script>");
        } else {
            printWriter.write("<script>alert('删除失败');location.href='/ning.ying/MemberServlet?method=memberNews';</script>");
        }
    }
}
