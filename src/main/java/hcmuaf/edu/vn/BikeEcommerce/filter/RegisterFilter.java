package hcmuaf.edu.vn.BikeEcommerce.filter;

import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class RegisterFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        Filter.super.init(filterConfig);
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        String httpMethod = httpRequest.getMethod();

       if ("GET".equalsIgnoreCase(httpMethod)) chain.doFilter(request, response);


        String email = request.getParameter("email");
        String userName = request.getParameter("userName");
        String pass = request.getParameter("pass");
        String rePass = request.getParameter("rePass");
        Boolean checkEmail = UserService.getInstance().isEmailOrUserNameAlreadyExists(email);
        Boolean checkUserName = UserService.getInstance().isEmailOrUserNameAlreadyExists(userName);
        if (checkEmail) {
            request.setAttribute("mess", "Email already exists");
            request.getRequestDispatcher("/signUp/Register.jsp").forward(request, response);
            return;
        }
        if (checkUserName) {
            request.setAttribute("mess", "User name already exists");
            request.getRequestDispatcher("/signUp/Register.jsp").forward(request, response);
            return;
        }
        if (!pass.equals(rePass)) {
            request.setAttribute("mess", "Password and re-password are not the same");
            request.getRequestDispatcher("/signUp/Register.jsp").forward(request, response);
            return;
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
