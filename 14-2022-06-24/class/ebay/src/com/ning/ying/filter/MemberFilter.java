package com.ning.ying.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class MemberFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("MemberFilter (管理页面) init (初始化)");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("MemberFilter (管理页面) doFilter (服务)");
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        HttpSession session = httpServletRequest.getSession();
        Object type = session.getAttribute("type");
        if (type == null) {
            httpServletResponse.sendRedirect("/ning.ying/login.jsp");
        } else if (Integer.parseInt(String.valueOf(type)) == 1) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            httpServletResponse.sendRedirect("/ning.ying/login.jsp");
        }
    }

    @Override
    public void destroy() {
        System.out.println("MemberFilter (管理页面) destroy (销毁)");
    }
}
