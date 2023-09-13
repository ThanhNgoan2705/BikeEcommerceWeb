package hcmuaf.edu.vn.BikeEcommerce.filter;


import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.io.PrintWriter;

public class TokenFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        Cookie cookie = ((HttpServletRequest) servletRequest).getCookies()[0];
        System.out.println(cookie.getValue() + " filter cookies");
        PrintWriter printWriter = null;
        if (cookie.getValue().equals("tokenFake")) {
            servletRequest.getRequestDispatcher("/user").forward(servletRequest, servletResponse);
        } else {
            printWriter = servletResponse.getWriter();
            printWriter.println("<script>\n" +
                    "    alert(\"You are not logged in\");\n" +
                    "</script>");
            System.out.println("You are not logged in");
            return;
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
