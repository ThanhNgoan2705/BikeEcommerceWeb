package hcmuaf.edu.vn.BikeEcommerce.controllers.adminController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/user/order-admin")
public class OrderController extends HttpServlet {
    UserService userService;
    Gson gson;
    OrderService orderService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        userService = UserService.getInstance();
        orderService = OrderService.getInstance();
    }

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
            req.getSession().setAttribute("user", token);
            req.getSession().setAttribute("userId", token.getUserId());
            req.getSession().setAttribute("haveUser", true);
            req.getSession().setAttribute("userName", token.getUserName());

            List<User> userList = userService.getAllUser();
            Map<String, List<Order>> orderMap = new HashMap<>();
            for (User user : userList) {
                List<Order> orderList = orderService.getAllOrderByUserId(user.getUserId());
                orderMap.put(user.getUserId(), orderList);
            }
            req.setAttribute("orderMap", orderMap);
        }
        req.getRequestDispatcher("/admin/order.jsp").forward(req, resp);
    }
}
