package onclass.one.servlet;

import onclass.one.dao.realize.StudentRealizeDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class StudentServletDelete extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        StudentRealizeDao studentRealizeDao = new StudentRealizeDao();
        int row = studentRealizeDao.delete(Integer.parseInt(req.getParameter("index_Sid")));
        if (row>0){
            resp.getWriter().write("<script>alert('删除成功');location.href='index.jsp'</script>");
        }else{
            resp.getWriter().write("删除失败");
        }
    }
}
