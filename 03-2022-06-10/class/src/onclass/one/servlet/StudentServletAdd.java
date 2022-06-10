package onclass.one.servlet;

import onclass.one.dao.realize.StudentRealizeDao;
import onclass.one.entity.Students;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StudentServletAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        StudentRealizeDao studentRealizeDao = new StudentRealizeDao();
        String name = req.getParameter("SName");
        String sex = req.getParameter("SSex");
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date = null;
        try {
            date = simpleDateFormat.parse(req.getParameter("SDate"));
        } catch (
                ParseException e) {
            e.printStackTrace();
        }
        int row = studentRealizeDao.add(new Students(name, sex, date));
        if (row > 0) {
            resp.getWriter().write("<script>alert('添加成功');</script>");
        } else {
            resp.getWriter().write("<script>alert('添加失败');</script>");
        }
    }
}
