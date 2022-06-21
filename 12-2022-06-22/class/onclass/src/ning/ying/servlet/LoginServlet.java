package ning.ying.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 登录服务
 */
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String UName = req.getParameter("UName");
        String UPassword = req.getParameter("UPassword");
        if (UName != null) {
            if ("user".equals(UName)) {
                System.out.println(UName);
                PrintWriter printWriter = resp.getWriter();
                printWriter.write("<h1>你好:" + UName + "</h1>");//第一题
            } else {
                HttpSession session = req.getSession();
                session.setAttribute("UName", UName);
                session.setAttribute("UPassword", UPassword);
                resp.sendRedirect("/ning.ying/save/save.jsp");
            }
        }
    }
}
