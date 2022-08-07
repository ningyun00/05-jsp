package com.ning.servlet;

import com.ning.dao.BaseDao;
import com.ning.dao.StudentDao;
import com.ning.entity.Student;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "IndexServlet", value = "/IndexServlet")
public class IndexServlet extends HttpServlet {
    private static StudentDao studentDao = new StudentDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet、doGet");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet、doPost");
    }

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("IndexServlet、service");
        String method = request.getParameter("method");
        if (method == null) {
            login(request, response);
        }
        if ("selectId".equals(method)) {
            updateSelect(request, response);
        }
        if ("update".equals(method)) {
            update(request, response);
        }

    }

    private void update(HttpServletRequest request, HttpServletResponse response) {
        String sid = request.getParameter("sid");
        String sname = request.getParameter("sname");
        String ssex = request.getParameter("ssex");
        String sage = request.getParameter("sage");
        String saddress = request.getParameter("saddress");
        String semail = request.getParameter("semail");
        if (sid != null && sname != null && ssex != null && sage != null && saddress != null && semail != null) {
            int id = Integer.parseInt(sid);
            int age = Integer.parseInt(sage);
            Student student = new Student();
            student.setSid(id);
            student.setSname(sname);
            student.setSgender(ssex);
            student.setSage(age);
            student.setSaddress(saddress);
            student.setSemaile(semail);
            request.getRequestDispatcher("")
        }
    }

    private void updateSelect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String sid = request.getParameter("sid");
        if (sid != null) {
            request.setAttribute("student", studentDao.select(Integer.parseInt(sid)));
            request.getRequestDispatcher("update.jsp").forward(request, response);
        }
    }

    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("Students", studentDao.select());
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}
