package onclass;

import javax.servlet.*;
import java.io.IOException;

/*2.写一个类实现 Servlet 接口,测试 servlet 的生命周期,*/
public class Two implements Servlet {
    static long start;
    static long end;

    @Override
    public void init(ServletConfig servletConfig) throws ServletException {
        start = System.currentTimeMillis();
        System.out.println("初始化方法");
    }

    @Override
    public ServletConfig getServletConfig() {
        return null;
    }

    @Override
    public void service(ServletRequest servletRequest, ServletResponse servletResponse) throws ServletException, IOException {
        System.out.println("服务方法");
    }

    @Override
    public String getServletInfo() {
        return null;
    }

    @Override
    public void destroy() {
        end = System.currentTimeMillis();
        System.out.println("结束服务器的方法");
        System.out.println(end - start);
    }
}
