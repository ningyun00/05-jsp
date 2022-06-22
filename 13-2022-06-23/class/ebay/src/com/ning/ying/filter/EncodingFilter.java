package com.ning.ying.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;

/**
 * 编码
 */
public class EncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("EncodingFilter (编码) init (初始化)");
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("EncodingFilter (编码) doFilter (服务)");
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        response.setContentType("text/html;charset=utf-8");
        if ("POST".equals(request.getMethod())) {
            request.setCharacterEncoding("utf-8");
        } else {
            Enumeration<String> stringEnumeration = request.getParameterNames();
            while (stringEnumeration.hasMoreElements()) {
                String element = stringEnumeration.nextElement();
                String[] values = request.getParameterValues(element);
                for (int i = 0; i < values.length; i++) {
                    values[i] = new String(values[i].getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
                }
            }
        }
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        System.out.println("EncodingFilter (编码) destroy (初始化)");
    }
}
