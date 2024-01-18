package hcmuaf.edu.vn.BikeEcommerce.controllers.adminController;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/dashboard")
public class DashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        if (token == null) {
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
            return;
        }
        System.out.println("token: " + token);
        if (token.getRole().equals("1")) {
            req.getRequestDispatcher("/home").forward(req, resp);
            return;
        } else {
            System.out.println("token: " + token);
            System.out.println("token userId: " + token.getUserId());
            System.out.println("token role: " + token.getRole());
            User user = UserService.getInstance().getUserByKey(token.getUserId());
            req.getSession().setAttribute("user", user);
            req.getSession().setAttribute("userId", user.getUserId());
            req.getSession().setAttribute("haveUser", true);
            req.getSession().setAttribute("userName", user.getUserName());
        }
        req.getRequestDispatcher("/admin/home_dashboard.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
