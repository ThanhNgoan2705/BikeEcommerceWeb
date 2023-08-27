package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

@WebServlet("/login")

public class LoginContrller extends HttpServlet {

    PrintWriter printWriter = null;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        request.setAttribute("loginMessage", "Login successful");
//        response.sendRedirect(request.getContextPath() +"/dev/Login.jsp");
        request.getRequestDispatcher("/dev/Login.jsp").forward(request, response);
//        System.out.println("login");

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        printWriter = resp.getWriter();
        String name = (String) req.getParameter("email");
        String pass = (String) req.getParameter("pass");
        System.out.println(name + " ------- " + pass);
        User user = UserService.getInstance().loginByUserNameOrEmail(name, pass);

        if (user != null) {
            try {
                String token = TokenService.getInstance().genTokenByUser(user);
                Cookie cookie = new Cookie("token-bike", "tokenFake");
                cookie.setValue("tokenFake");
                resp.addCookie(cookie);
                System.out.println(cookie.getValue() + " login cookies");
                req.getRequestDispatcher("/user").forward(req, resp);
            } catch (NoSuchAlgorithmException e) {
                printWriter.println("<script>\n" +
                        "    alert(\"Login failed\");\n" +
                        "</script>");
                System.out.println("Login failed");
            }
        } else {
            printWriter.println("<script>" +
                    "    var result = confirm(\"Login failed. Do you want to try again?\");\n" +
                    "    if (result) {" +
                    "       window.location.href = \"/login\"; " +
                    "    } else {" +
                    "    }" +
                    "</script>\n");
//            req.getRequestDispatcher("/login").forward(req, resp);
//            resp.sendRedirect(req.getContextPath() + "/login");
        }


    }
}
