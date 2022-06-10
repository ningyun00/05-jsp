package underclass.servlet;

import underclass.dao.realize.ProductRealizeDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class DeleteProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        int A = Integer.parseInt(req.getParameter("id"));
        System.out.println(req.getParameter("id"));
        ProductRealizeDao productRealizeDao = new ProductRealizeDao();
        int row = productRealizeDao.delete(A);
        if (row > 0) {
            resp.getWriter().write("<script>alert('删除成功');location.href='/class/underclass/select.jsp'</script>");
        } else {
            resp.getWriter().write("<script>alert('删除失败');location.href='/class/underclass/select.jsp'</script>");
        }
    }
}
