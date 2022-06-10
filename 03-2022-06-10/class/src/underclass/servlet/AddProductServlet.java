package underclass.servlet;

import underclass.dao.realize.ProductRealizeDao;
import underclass.entity.Product;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AddProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        ProductRealizeDao productRealizeDao = new ProductRealizeDao();
        String pname = req.getParameter("pname");
        Float price = Float.parseFloat(req.getParameter("price"));
        String pdesc = req.getParameter("pdesc");
        if (productRealizeDao.add(new Product(pname, price, pdesc)) > 0) {
            resp.getWriter().write("<script>alert('添加成功');location.href='/class/underclass/select.jsp'</script>");
        } else {
            resp.getWriter().write("<script>alert('添加失败');location.href='/class/underclass/select.jsp'</script>");
        }
    }
}
