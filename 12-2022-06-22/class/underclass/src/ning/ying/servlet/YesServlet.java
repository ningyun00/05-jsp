package ning.ying.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * 登录验证
 */
public class YesServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter printWriter = resp.getWriter();
        HttpSession session = req.getSession();
        System.out.println("sesion:" + session.getAttribute("six"));
        System.out.println(req.getParameter("six"));
        int sessionSix = Integer.parseInt(String.valueOf(session.getAttribute("six")));
        int textSix = Integer.parseInt(req.getParameter("six"));
        if (sessionSix == textSix){
            printWriter.write("<h1 style='color=red;'>登录成功</h1>");
        } else{
            printWriter.write("<script>alert('无法访问');location.href='login.jsp';</script>");
        }
    }
}
