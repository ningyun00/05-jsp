package ning.ying.servlet;

import ning.ying.dao.UserDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UserServlet extends HttpServlet {
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
            if (req.getParameter("UName") != null) {
                String UName = req.getParameter("UName");
                if (UserDao.showUser(UName)) {
                    pipedWriter.write("用户未被使用");
                } else {
                    pipedWriter.write("用户已被使用");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
