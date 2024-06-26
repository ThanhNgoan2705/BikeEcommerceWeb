package hcmuaf.edu.vn.BikeEcommerce.controllers.orderController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.OrderItem;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import hcmuaf.edu.vn.BikeEcommerce.atbm.Hash;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user/order")
public class OrderController extends HttpServlet {
    Gson gson;
    OrderService orderService = OrderService.getInstance();
    CartService cartService = CartService.getInstance();

    public void init() throws ServletException {
        gson = new Gson();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String orderId = req.getParameter("orderId");
        System.out.println("orderId: " + orderId);
        String code;
        if (token != null) {
            req.setAttribute("haveUser", true);
            req.setAttribute("userName", token.getUserName());
            if (orderId != null) {
                resp.setCharacterEncoding("UTF-8");
                Order order = orderService.getOrderById(orderId);
                System.out.println("orderId: " + orderId);
                System.out.println("orderfgdf: " + order);
                if (order == null) {
                    req.setAttribute("order", null);
                    req.getRequestDispatcher("/orderVerification.jsp").forward(req, resp);
                    return;
                }
                List<OrderItem> itemList = order.getOrderItemList();
                req.setAttribute("itemList", itemList);
                double totalPrice = 0;
                String totalPriceStr = "";
                for (OrderItem item : itemList) {
                    DecimalFormat df = new DecimalFormat("###,###,###.##");
                   String priceItem = df.format(item.getPrice());
                   String totalPriceItem = df.format(item.getPrice() * item.getQuantity());
                    double price = item.getPrice() * item.getQuantity();
                    totalPrice += price;
                    totalPriceStr = df.format(totalPrice);
                    req.setAttribute("priceItem", priceItem);
                    req.setAttribute("totalPriceItem", totalPriceItem);
                }
                req.setAttribute("totalPrice", totalPriceStr);
                req.setAttribute("order", order);
                code = order.toStringForHash();
                System.out.println("code: " + code);
                try {
                    Hash hash = new Hash("SHA-256");
                    String hashCode = hash.hash(code);
                    System.out.println("hashCode: " + hashCode);
                    req.setAttribute("code", hashCode);
                    req.setAttribute("order", order);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(e);
                } catch (NoSuchProviderException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        req.getRequestDispatcher("/orderVerification.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        doGet(req, resp);
    }
}
