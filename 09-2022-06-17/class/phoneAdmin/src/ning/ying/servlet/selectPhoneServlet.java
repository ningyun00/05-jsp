package ning.ying.servlet;

import ning.ying.dao.Dao;
import ning.ying.entity.Phone;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * 查询所有
 */
public class selectPhoneServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        resp.setCharacterEncoding("utf-8");
        PrintWriter pipedWriter = resp.getWriter();
        List<Phone> phoneArrayList = Dao.queryAllPhone();
        try {
            if (req.getParameter("select") != null && !"请选择".equals(req.getParameter("brand"))) {
                String brand = req.getParameter("brand");
                phoneArrayList = Dao.queryBrandPhone(brand);
                req.setAttribute("phoneArrayList", phoneArrayList);
            } else {
                req.setAttribute("phoneArrayList", phoneArrayList);
            }
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
