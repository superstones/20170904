package Econding;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by Administrator on 2017/9/4.
 */@WebFilter(filterName = "Filter" ,urlPatterns = "/AddBook")

public class Filter implements javax.servlet.Filter {
    private String encoding;
    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        request.setCharacterEncoding(encoding);
        chain.doFilter(request, resp);
    }

    public void init(FilterConfig config) throws ServletException {
   encoding= config.getInitParameter("encoding");
    }

}
