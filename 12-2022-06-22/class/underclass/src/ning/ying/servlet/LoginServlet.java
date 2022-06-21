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
        System.out.println(UName+"服务器"+UPassword);
        if ("admin".equals(UName)&&"admin".equals(UPassword)){
            resp.sendRedirect("yes.jsp");
        }else{
            resp.sendRedirect("error.jsp");
        }
    }
}
