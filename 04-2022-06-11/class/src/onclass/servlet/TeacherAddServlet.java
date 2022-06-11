package onclass.servlet;

import onclass.dao.realize.TeacherDaoRealize;
import onclass.entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class TeacherAddServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        PrintWriter printWriter = resp.getWriter();

        String TName = req.getParameter("TName");
        String TSubject = req.getParameter("TSubject");
        TeacherDaoRealize teacherDaoRealize = new TeacherDaoRealize();
        List<Teacher> teacherArrayList = teacherDaoRealize.selectTeacher();
        req.setAttribute("teacherList", teacherArrayList);
        if (teacherDaoRealize.addTeacher(new Teacher(TName, TSubject)) > 0) {
            printWriter.write("<script>alert('添加成功');</script>");
        } else {
            printWriter.write("<script>alert('添加失败');</script>");
        }
        req.getRequestDispatcher("/jsp/onclass/selectTeacher.jsp").forward(req, resp);
    }
}
