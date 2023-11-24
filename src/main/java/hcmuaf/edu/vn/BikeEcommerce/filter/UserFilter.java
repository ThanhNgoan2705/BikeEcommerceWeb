package hcmuaf.edu.vn.BikeEcommerce.filter;


import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.*;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

public class UserFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        Token token = null;
        Cookie[] cookieArr = ((HttpServletRequest) servletRequest).getCookies();
        Cookie cookie = null;
        for (Cookie c : cookieArr) {
//            System.out.println(c.getName() + ":" + c.getValue());
            if (c.getName().equals("token-bike")) {
                cookie = c;
            }
        }

        if (cookie == null) {
            ((HttpServletResponse) servletResponse).sendRedirect("/errorPage.jsp");
            return;
        }

//        System.out.println(cookie.getValue() + " filter cookies");
        String dataToken = cookie.getValue();
        try {
            token = TokenService.getInstance().getTokenFromHeader(dataToken);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }
        if (token == null) {
            servletResponse.getWriter().write("khong co token");
            return;
//            servletRequest.getRequestDispatcher("/index.jsp").forward(servletRequest, servletResponse);
        }
        servletRequest.setAttribute("token", token);
        filterChain.doFilter(servletRequest, servletResponse);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
