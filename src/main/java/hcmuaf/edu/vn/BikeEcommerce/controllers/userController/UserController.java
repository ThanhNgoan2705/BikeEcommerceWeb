package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.CertView;
import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.*;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CertViewService;
import hcmuaf.edu.vn.BikeEcommerce.service.*;

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
    Gson gson;
    AddressService addressService;
    OrderService orderService;
    FavoriteService favoriteService;
    CartService cartService;
    UserService userService;

    public void init() throws ServletException {
        gson = new Gson();
        addressService = AddressService.getInstance();
        orderService = OrderService.getInstance();
        favoriteService = FavoriteService.getInstance();
        cartService = CartService.getInstance();
        userService = UserService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        Token token = (Token) req.getAttribute("token");
        if (token != null) {
            User user = userService.getUserByKey(token.getUserId());
            List<Address> addressList = addressService.getAllAddressByUserId(token.getUserId());
            List<Order> orderList = orderService.getAllOrderByUserId(token.getUserId());
            List<Favorite> favoriteList = favoriteService.getFavoriteByUserId(token.getUserId());
            List<CertView> certViews = CertViewService.getCertViewFormUserId(token.getUserId());
            Cart cart = cartService.getCartByKey(token.getUserId());
            int cartTotal = 0;
            if (cart != null) {
                List<CartItem> itemList = cart.getCartItemList();
                cartTotal = itemList.size();
            }
            req.setAttribute("cartTotal", cartTotal);
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
            req.setAttribute("certViews",certViews);
            req.setAttribute("userName", name);
            req.setAttribute("haveUser", true);
        }
        req.getRequestDispatcher("/UserProfile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req, resp);
    }
}
