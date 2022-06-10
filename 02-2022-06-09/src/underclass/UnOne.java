package underclass;

import javax.servlet.*;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/*1.写一个类实现 Servlet 接口,统计此 servlet 被请求了多少次，输出到客户端,在销毁此
Servlet 的时候，将请求次数写到硬盘的文本文档中.*/
public class UnOne implements Servlet {
    public static int request = 0;

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {

    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        request++;
        servletResponse.setContentType("text/html;charset=utf-8");
        servletResponse.getWriter().write("你请求了" + request + "次");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("E:\\S2\\05-jsp\\02-2022-06-09\\src\\log\\log.txt", true));
            bufferedWriter.write("服务器关闭时间：" + new SimpleDateFormat("yyyy-MM-dd hh:m:s").format(new Date()) + " 用户请求：" + request + "次\n");
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
