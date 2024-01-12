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

@WebServlet("/user/order-api/*")
public class OrderAPI extends HttpServlet {
    Gson gson;
    OrderService orderService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        orderService = OrderService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       resp.setCharacterEncoding("UTF-8");
        System.out.println("doGet OrderAPI");
        Token token = (Token) req.getAttribute("token");
        if (token != null) {
            req.setAttribute("haveUser", true);
            req.setAttribute("userName", token.getUserName());
            String orderId = req.getPathInfo();
            if (orderId != null) {
                if (orderId.startsWith("/")) {
                    orderId = orderId.substring(1);
                }
                Order order = orderService.getOrderById(orderId);
                String data = gson.toJson(order);
                resp.getWriter().write(data);
                System.out.println("orderId: " + orderId);
            } else {
                List<Order> orderList = orderService.getAllOrderByUserId(token.getUserId());
                String data = gson.toJson(orderList);
                System.out.println("orderList: " + data);
                resp.getWriter().write(data);
            }

        }
    }
}
