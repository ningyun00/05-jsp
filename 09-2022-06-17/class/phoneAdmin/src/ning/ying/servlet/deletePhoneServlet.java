package ning.ying.servlet;

import ning.ying.dao.Dao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 删除手机信息
 */
public class deletePhoneServlet extends HttpServlet {
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
        try {
            if (req.getParameter("delete") != null) {
                System.out.println(req.getParameter("delete"));
                int id = Integer.parseInt(req.getParameter("delete"));
                if (Dao.delPhone(id) > 0) {
                    pipedWriter.write("<script>alert('删除成功');location.href='selectPhoneServlet';</script>");
                } else {
                    pipedWriter.write("<script>alert('删除失败');location.href='selectPhoneServlet';</script>");
                }
            } else {
                pipedWriter.write("<script>alert('拒接访问');location.href='selectPhoneServlet';</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
