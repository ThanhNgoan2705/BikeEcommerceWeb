package hcmuaf.edu.vn.BikeEcommerce.filter;


import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

public class UserFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        Token token = null;
        Cookie cookie = ((HttpServletRequest) servletRequest).getCookies()[0];
        System.out.println(cookie.getValue() + " filter cookies");
        String dataToken = cookie.getValue();
        try {
            token = TokenService.getInstance().getTokenFromHeader(dataToken);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
        if (token == null) {
            servletRequest.getRequestDispatcher("/index.jsp").forward(servletRequest, servletResponse);
        }
        servletRequest.setAttribute("token", token);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
