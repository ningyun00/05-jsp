package onclass.servlet;

import onclass.dao.realize.TeacherDaoRealize;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class TeacherDeleteServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        TeacherDaoRealize teacherDaoRealize = new TeacherDaoRealize();
        int row = 0;
        if (req.getParameter("TID") != null) {
            teacherDaoRealize.deleteTeacher(Integer.parseInt(req.getParameter("TID")));
        }
        resp.sendRedirect("/class/TeacherSelectServlet");
    }
}
