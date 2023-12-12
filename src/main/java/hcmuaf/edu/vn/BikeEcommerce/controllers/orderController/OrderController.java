package hcmuaf.edu.vn.BikeEcommerce.controllers.orderController;

import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import vn.edu.atbmmodel.hash.Hash;

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
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String orderId = req.getParameter("orderId");
        Order order = OrderService.getInstance().getOrderById(orderId);
        String code = order.toStringForHash();
        String hashCode = "";


        try {
          Hash  hash = new Hash("SHA-256");
            hashCode = hash.hash(code);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (NoSuchProviderException e) {
            throw new RuntimeException(e);
        }

            System.out.println(hashCode);

        req.setAttribute("code", hashCode);
        req.setAttribute("order", order);
        req.getRequestDispatcher("/orderDetail.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
