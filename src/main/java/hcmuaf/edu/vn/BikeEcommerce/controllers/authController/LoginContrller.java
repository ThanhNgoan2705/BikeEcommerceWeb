package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@WebServlet("/login")

public class LoginContrller extends HttpServlet {

    PrintWriter printWriter = null;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.sendRedirect(request.getContextPath() +"/dev/Login.jsp");
        request.getRequestDispatcher("logIn.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        printWriter = resp.getWriter();
        String email = (String) req.getParameter("email");
        String pass = (String) req.getParameter("pass");
        System.out.println(email + " ------- " + pass);
        User user = UserService.getInstance().loginByUserNameOrEmail(email, pass);
        System.out.println(user + " user login controller");
        if (user != null) {
//        if (true) {
            try {
                String tokenValue = TokenService.getInstance().genTokenByUser(user); // tokenValue
                Cookie cookie = new Cookie("token-bike", tokenValue);
                resp.addCookie(cookie);
                System.out.println(cookie.getValue() + " login cookies");
                HttpSession session = req.getSession(true);
                session.setAttribute("user", user);
                session.setAttribute("userId", user.getUserId());
                session.setAttribute("haveUser", true);
                session.setAttribute("userName", user.getUserName());
                System.out.println("Login success");
                resp.sendRedirect("home");
            } catch (NoSuchAlgorithmException e) {
                printWriter.println("<script>\n" + "    alert(\"Login failed\");\n" + "</script>");
                System.out.println("Login failed");
            } catch (InvalidKeySpecException e) {
                throw new RuntimeException(e);
            }
        }
        else {
            System.out.println("Login failed");
            req.setAttribute("emailUser", email);
            req.setAttribute("mess", "wrong info");
            req.getRequestDispatcher("login.jsp").forward(req, resp);
//            resp.sendRedirect(req.getContextPath() + "/login");
        }


    }
}
