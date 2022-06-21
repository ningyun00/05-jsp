package ning.ying.filter;

import javax.servlet.*;
import java.io.IOException;

/**
 * 测试filter生命周期
 */
public class TestFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("TestFilter(测试) init(初始化)");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("TestFilter(测试) doFilter(服务)");
        filterChain.doFilter(servletRequest, servletResponse);//如果测试线程不放行则会让页面不会显示
    }

    @Override
    public void destroy() {
        System.out.println("TestFilter(测试) destroy(销毁)");
    }
}
