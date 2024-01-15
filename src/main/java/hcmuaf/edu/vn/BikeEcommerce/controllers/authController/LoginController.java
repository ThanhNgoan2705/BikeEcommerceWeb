package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
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

public class LoginController extends HttpServlet {

    PrintWriter printWriter = null;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Token token = null;
        HttpSession session = request.getSession();
        String userId = (String) session.getAttribute("userId");
        if (userId==null){
            request.getRequestDispatcher("/logIn.jsp").forward(request, response);
            return;
        }
        try {
            Cookie[] cookieArr = request.getCookies();
            Cookie cookie = null;

            for (Cookie c : cookieArr) {
                if (c.getName().equals("token-bike")) {
                    cookie = c;
                }
            }
            if (cookie == null) {
                request.getRequestDispatcher("/logIn.jsp").forward(request, response);
                return;
            }
            System.out.println(cookie.getValue() + " filter cookies");
            String dataToken = cookie.getValue();
            token = TokenService.getInstance().getTokenFromHeader(dataToken);// tao token tu du lieu

        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }
        if (token != null && userId!=null) {
            response.sendRedirect("/home");
            return;
        }

        request.getRequestDispatcher("/logIn.jsp").forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        printWriter = resp.getWriter();
        String email = (String) req.getParameter("email");
        String pass = (String) req.getParameter("pass");
        System.out.println(email + " ------- " + pass);
        User user = UserService.getInstance().loginByUserNameOrEmail(email, pass);
        System.out.println(user + " user login controller");
        if (user != null) {
            try {
                String tokenValue = TokenService.getInstance().genTokenByUser(user); // tokenValue
                Cookie cookie = new Cookie("token-bike", tokenValue);
                resp.addCookie(cookie);
                System.out.println(cookie.getValue() + " login cookies");
                HttpSession session = req.getSession(true);
//                session.setAttribute("user", user);
                session.setAttribute("userId", user.getUserId());
//                session.setAttribute("haveUser", true);
//                session.setAttribute("userName", user.getUserName());
//                System.out.println("Login success");
//                System.out.println("user: " + user);
//                System.out.println("role: " + user.getRole());
                if (user.getRole() == 1) {
                    resp.sendRedirect("/home");
                } else if (user.getRole() == 2) {
                    System.out.println("admin");
                    resp.sendRedirect("/user/dashboard");
                } else {
                    resp.sendRedirect("/login");
                }
            } catch (NoSuchAlgorithmException e) {
                printWriter.println("<script>\n" + "    alert(\"Login failed\");\n" + "</script>");
                System.out.println("a");
            } catch (InvalidKeySpecException e) {
                System.out.println("b");
                throw new RuntimeException(e);
            }
        } else {
            System.out.println("c");
            req.setAttribute("emailUser", email);
            req.setAttribute("mess", "wrong info");
            req.getRequestDispatcher("/logIn.jsp").forward(req, resp);
        }


    }
}
