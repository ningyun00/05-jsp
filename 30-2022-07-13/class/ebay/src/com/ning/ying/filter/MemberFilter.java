package com.ning.ying.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class MemberFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("MemberFilter (管理页面) init (初始化)");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("MemberFilter (管理页面) doFilter (服务)");
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpSession session = httpServletRequest.getSession();
        PrintWriter printWriter = servletResponse.getWriter();
        Object type = session.getAttribute("type");
        if (type == null) {
            printWriter.write("<script>alert('请先登录');location.href='/ning.ying/login.jsp';</script>");
        } else if (Integer.parseInt(String.valueOf(type)) == 1) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else if (Integer.parseInt(String.valueOf(type)) == 0){
            filterChain.doFilter(servletRequest, servletResponse);
        }else{
            printWriter.write("<script>alert('找不到页面');location.href='/ning.ying/login.jsp';</script>");
        }
    }

    @Override
    public void destroy() {
        System.out.println("MemberFilter (管理页面) destroy (销毁)");
    }
}
