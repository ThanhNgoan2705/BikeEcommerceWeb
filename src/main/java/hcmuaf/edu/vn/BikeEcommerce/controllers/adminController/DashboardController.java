package hcmuaf.edu.vn.BikeEcommerce.controllers.adminController;

import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/admin/dashboard")
public class DashboardController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        if (token != null) {
            System.out.println("token: " + token);
            req.setAttribute("user", token);
            req.setAttribute("userId", token.getUserId());
            req.setAttribute("haveUser", true);
            req.setAttribute("userName", token.getUserName());
        }
        req.getRequestDispatcher("/admin/home_dashboard.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
