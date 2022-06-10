package underclass;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/*2.从一个 jsp 页面上使用 get 方式提交两个文本框，一个下拉列表，下拉列表中是（+,-,*,/）
到 Servlet，Servlet 根据请求做相应的计算，得到结果后输出到客户端.(Servlet 继承
HttpServlet 的方式实现*/
@WebServlet(name = "UnTwo", value = "/UnTwo")
public class UnTwo extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        Double one = Double.parseDouble(req.getParameter("one"));
        Double two = Double.parseDouble(req.getParameter("two"));
        String algorithm = req.getParameter("algorithm");
        System.out.println(algorithm);
        if ("+".equals(algorithm)) {
            resp.getWriter().write(one + "+" + two + "=" + (one + two));
        }
        if ("-".equals(algorithm)) {
            resp.getWriter().write(one + "-" + two + "=" + (one - two));
        }
        if ("*".equals(algorithm)) {
            resp.getWriter().write(one + "*" + two + "=" + (one * two));
        }
        if ("/".equals(algorithm)) {
           if (two==0){
               resp.getWriter().write("不能除零");
           }else{
               resp.getWriter().write(one + "÷" + two + "=" + (one / two));
           }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
