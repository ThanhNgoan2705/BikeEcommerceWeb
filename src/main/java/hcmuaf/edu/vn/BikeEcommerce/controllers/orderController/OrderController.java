package hcmuaf.edu.vn.BikeEcommerce.controllers.orderController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
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

@WebServlet("/user/order")
public class OrderController extends HttpServlet {
    Gson gson;
    OrderService orderService;

    public void init() throws ServletException {
        gson = new Gson();
        orderService = OrderService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
          resp.setCharacterEncoding("UTF-8");
            Token token = (Token) req.getAttribute("token");
            String queryString = req.getQueryString();
            System.out.println("queryString: " + queryString);
            String orderId = queryString.substring(queryString.indexOf("=") + 1);
            System.out.println("orderId: " + orderId);
            String code;
            String hashCode;
            if (token != null) {
                req.getSession().setAttribute("haveUser", true);
                req.getSession().setAttribute("userName", token.getUserName());
                if (orderId != null) {
                    Order order = orderService.getOrderById(orderId);
                    System.out.println("orderId: " + orderId);
                    System.out.println("order: " + order);
                    req.setAttribute("order", order);
                    code = order.toStringForHash();
                    try {
                        Hash hash = new Hash("SHA-256");
                        hashCode = hash.hash(code);
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
        super.doPost(req, resp);
    }
}
