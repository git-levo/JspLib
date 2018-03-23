package com.e1858.building.filter;

import javax.servlet.*;
import java.io.IOException;
import java.util.Date;

/*
*@Author Feng2018
*@Date 2018/3/22
*/
public class LogFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        String param=filterConfig.getInitParameter("default");
        System.out.println(param);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        String ipAddress=servletRequest.getRemoteAddr();
        System.out.println("IP:"+ipAddress+"------"+"TIME:"+new Date().toString());
        filterChain.doFilter(servletRequest,servletResponse);
    }

    @Override
    public void destroy() {

    }
}
