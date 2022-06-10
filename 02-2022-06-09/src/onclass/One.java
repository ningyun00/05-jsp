package onclass;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import java.io.IOException;

/*1.写一个 Servlet，然后向客户端输出一段歌词的信息，要输出时解决中文乱码问题。*/
public class One extends GenericServlet {
    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        servletResponse.setContentType("text/html;charset=UTF-8");
        servletResponse.getWriter().print("<p>暗示</p>");
        servletResponse.getWriter().print("阿斯顿飞过范德萨");
        servletResponse.getWriter().print("阿斯顿法国红酒官方的色如太阳和国防大厦v");
    }
}
