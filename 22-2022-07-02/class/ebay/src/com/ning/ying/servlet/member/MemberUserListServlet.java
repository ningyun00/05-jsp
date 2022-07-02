package com.ning.ying.servlet.member;

import com.ning.ying.dao.UserDao;
import com.ning.ying.entity.EabyUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 所有用户服务
 */
@WebServlet(name = "MemberUserListServlet", value = "/MemberUserListServlet")
public class MemberUserListServlet extends HttpServlet {
    private static HttpSession session = null;
    private static PrintWriter printWriter = null;
    private static UserDao userDao = new UserDao();
    /**
     * 每次分几页
     */
    private static final int eachPage = 10;//每次分几页
    private static final int maxRow = userDao.maxRow();//最大页数

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("MemberUserListServlet (所有用户服务) service (服务)");
        //初始化
        session = request.getSession();
        printWriter = response.getWriter();

        String method = request.getParameter("method");
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
    private void Page(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //  最终分页多少次     多少行    每次几行
        int eventualUserList = maxRow % eachPage == 0 ? maxRow / eachPage : maxRow / eachPage + 1;
        session.setAttribute("eventualLimit", eventualUserList);
        int onePageUserList = Integer.parseInt(req.getParameter("pageNext"));
        List<EabyUser> userList = userDao.selectUser(onePageUserList, eachPage);
        session.setAttribute("onePageUserList", onePageUserList);//改变起始页数
        session.setAttribute("userList", userList);//改变新闻
        session.setAttribute("eventualUserList", eventualUserList);//最总页数
        resp.sendRedirect("Member/memberUserList.jsp");
    }
}
