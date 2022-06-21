package ning.ying.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;

/**
 * 过滤登录请求
 */
public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("LoginFilter (登录请求) init(初始化)");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("LoginFilter (登录请求) doFilter(服务)");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        filterChain.doFilter(servletRequest, servletResponse);
        HttpSession session = request.getSession();
        int six = (int) ((Math.random() * 9 + 1) * 100000);
        try {
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter("E:\\S2\\05-jsp\\12-2022-06-22\\class\\underclass\\web\\yes.txt", true));
            session.setAttribute("six",six);
            System.out.println(six);
            bufferedWriter.write(six + "\n");
            bufferedWriter.flush();
            bufferedWriter.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void destroy() {
        System.out.println("LoginFilter (登录请求) destroy(销毁)");
    }
}
