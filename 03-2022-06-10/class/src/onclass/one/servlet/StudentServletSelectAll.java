package onclass.one.servlet;

import onclass.one.dao.realize.StudentRealizeDao;
import onclass.one.entity.Students;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class StudentServletSelectAll extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        StudentRealizeDao studentRealizeDao = new StudentRealizeDao();
        List<Students> list = studentRealizeDao.selectAll();
        PrintWriter printWriter = resp.getWriter();
        printWriter.write("<table style='border: red solid 1px;'>");
        printWriter.write("<tr><td>编号</td><td>姓名</td><td>性别</td><td>生日</td></th>");
        for (Students students : list) {
            printWriter.write("<tr>");
            printWriter.write("<td>" + students.getSID() + "</td>");
            printWriter.write("<td>" + students.getSName() + "</td>");
            printWriter.write("<td>" + students.getSSex() + "</td>");
            printWriter.write("<td>" + students.getDate() + "</td>");
            printWriter.write("</tr>");
        }
        printWriter.write("</table>");
    }
}
