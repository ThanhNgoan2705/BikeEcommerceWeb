package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Favorite;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.AddressService;
import hcmuaf.edu.vn.BikeEcommerce.service.FavoriteService;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/user")
public class UserController extends HttpServlet {
    /**
     * Lấy thông tin user
     * URL: /user
     * Method: GET
     * require: token
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        if (token != null) {
            User user = UserService.getInstance().getUserByKey(token.getUserId());
            List<Address> addressList = AddressService.getInstance().getAllAddressByUserId(token.getUserId());
            List<Order> orderList = OrderService.getInstance().getAllOrderByUserId(token.getUserId());
            List<Favorite> favoriteList = FavoriteService.getInstance().getFavoriteByUserId(token.getUserId());
            String email = user.getEmail();
            String[] emailSplit = email.split("@");
            String emailShow = emailSplit[0].substring(0, 3) + "****" + emailSplit[0].substring(emailSplit[0].length() - 3) + "@" + emailSplit[1];
            String name = user.getUserName();
            req.setAttribute("favoriteList", favoriteList);
            req.setAttribute("addressList", addressList);
            req.setAttribute("orderList", orderList);
            req.setAttribute("user", user);
            req.setAttribute("emailShow", emailShow);
            req.setAttribute("name", name);
        }
        req.getRequestDispatcher("/UserProfile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
