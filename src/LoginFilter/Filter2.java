package LoginFilter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

/**
 * Created by Administrator on 2017/9/6.
 */
@WebFilter(filterName = "Filter2",urlPatterns = "/*")
public class Filter2 implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
     //检测Session中user是否为空 session属于HTTP的范畴 需要类型转换
        HttpServletRequest request =(HttpServletRequest) req;
        String username= (String) ((HttpServletRequest) req).getSession().getAttribute("user");
        if (username!=null){



            chain.doFilter(req, resp);


        }
        else
        {

            request.getRequestDispatcher("Fail.jsp").forward(request,resp);

        }




    }

    public void init(FilterConfig config) throws ServletException {

    }

}
