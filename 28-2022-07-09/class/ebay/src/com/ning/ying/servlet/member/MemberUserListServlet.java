package com.ning.ying.servlet.member;

import com.google.gson.Gson;
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
        if ("delete".equals(method)) {//删除用户
            delete(request, response);
        }
        if ("updateUser".equals(method)) {//查询要修改的用户
            updateUser(request, response);
        }
        if ("update".equals(method)) {
            update(request, response);
        }
    }

    /**
     * 修改用户信息
     */
    private void update(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        String loginName = req.getParameter("loginName");
        String userName = req.getParameter("userName");
        int sex = Integer.parseInt(req.getParameter("sex"));
        String idC = req.getParameter("idCard");
        String email = req.getParameter("email");
        int sexT = Integer.parseInt(req.getParameter("sexT"));
        String method = req.getParameter("moder");
        EabyUser eabyUser = new EabyUser();
        eabyUser.setId(id);
        eabyUser.setLoginName(loginName);
        eabyUser.setUserName(userName);
        eabyUser.setSex(sex);
        eabyUser.setIdentityCode(idC);
        eabyUser.setEmail(email);
        eabyUser.setType(sexT);
        eabyUser.setMobile(method);
        System.out.println(eabyUser);
        int row = new UserDao().updateUser(eabyUser);
        if (row>0){
            printWriter.write("<script>alert('修改成功');location.href='/ning.ying/MemberServlet?method=memberUserList';</script>");
        }else{
            printWriter.write("<script>alert('修改失败');location.href='/ning.ying/MemberServlet?method=memberUserList';</script>");
        }
    }

    /**
     * 查询要修改的用户信息
     */
    private void updateUser(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        int id = Integer.parseInt(req.getParameter("uid"));
        Object eabyUser = userDao.selectUser(id);
        Gson gson = new Gson();
        String json = gson.toJson(eabyUser);
        resp.getWriter().print(json);
    }

    /**
     * 删除用户
     */
    private void delete(HttpServletRequest request, HttpServletResponse response) {
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            int row = new UserDao().deleteUser(id);
            if (row > 0) {
                printWriter.write("<script>alert('删除成功');location.href='/ning.ying/MemberServlet?method=memberUserList';</script>");
            } else {
                printWriter.write("<script>alert('删除失败');location.href='/ning.ying/MemberServlet?method=memberUserList';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
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
