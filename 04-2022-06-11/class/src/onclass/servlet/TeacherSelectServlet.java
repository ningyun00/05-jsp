package onclass.servlet;

import onclass.dao.realize.TeacherDaoRealize;
import onclass.entity.Teacher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class TeacherSelectServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        TeacherDaoRealize teacherDaoRealize = new TeacherDaoRealize();
        List<Teacher> teacherArrayList = teacherDaoRealize.selectTeacher();
        req.setAttribute("teacherList", teacherArrayList);
        req.getRequestDispatcher("/jsp/onclass/selectTeacher.jsp").forward(req, resp);
    }
}
