package hcmuaf.edu.vn.BikeEcommerce.api;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/order-api-admin/*")
public class OrderAdminAPI extends HttpServlet {
    Gson gson;
    OrderService orderService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        orderService = OrderService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("doGet admin OrderAPI");
        String userId = req.getPathInfo();
        if (userId != null) {
            if (userId.startsWith("/")) {
                userId = userId.substring(1);
            }
        }
        System.out.println("userId: " + userId);
        resp.setCharacterEncoding("UTF-8");
        System.out.println("doGet OrderAPI");
        Token token = (Token) req.getAttribute("token");
        if (token != null && token.getRole().equals("2")) {
            req.setAttribute("haveUser", true);
            req.setAttribute("userName", token.getUserName());
            List<Order> orderList = orderService.getAllOrderByUserId(userId);
            for (Order order : orderList) {
                if (order.getStatus() == 1) {
                    String data = gson.toJson(orderList);
                    System.out.println("orderList: " + data);
                    resp.getWriter().write(data);
                }
            }
        }
    }
}
