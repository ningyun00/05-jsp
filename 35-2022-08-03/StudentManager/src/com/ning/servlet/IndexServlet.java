package com.ning.servlet;

import com.ning.dao.StudentDao;
import com.ning.entity.StudentInfo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    private static StudentDao studentDao = new StudentDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String method = request.getParameter("method");
        System.out.println(method);
        if (null == method) {
            //初始加载
            onload(request, response);
        }
        if ("update".equals(method)) {
            //查询id学生
            update(request, response);
        }
        if ("updateStudent".equals(method)) {
            //更新
            updateStudent(request, response);
        }
    }

    /**
     * 默认加载
     */
    private void onload(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<StudentInfo> studentInfoList = studentDao.select();
        request.setAttribute("studentInfoList", studentInfoList);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    /**
     * 更新学生
     */
    private void updateStudent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer sid = Integer.parseInt(String.valueOf(request.getParameter("sid")));
        String sname = request.getParameter("sname");
        String sgender = request.getParameter("sgendar");
        Integer sage = Integer.parseInt(String.valueOf(request.getParameter("sage")));
        String saddress = request.getParameter("saddress");
        String semaile = request.getParameter("semail");
        StudentInfo studentInfo = new StudentInfo();
        studentInfo.setSid(sid);
        studentInfo.setSname(sname);
        studentInfo.setSgender(sgender);
        studentInfo.setSage(sage);
        studentInfo.setSaddress(saddress);
        studentInfo.setSemaile(semaile);
        int row = studentDao.update(studentInfo);
        if (row > 0) {
            request.setAttribute("state", "更新成功！");
        } else {
            request.setAttribute("state", "更新失败！");
        }
        onload(request, response);
    }

    /**
     * 查询单条
     */
    private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("sid") != null) {
            int sid = Integer.parseInt(String.valueOf(request.getParameter("sid")));
            StudentInfo studentInfo = studentDao.select(sid);
            request.setAttribute("studentInfo", studentInfo);
            request.getRequestDispatcher("update.jsp").forward(request, response);
        }
    }
}
