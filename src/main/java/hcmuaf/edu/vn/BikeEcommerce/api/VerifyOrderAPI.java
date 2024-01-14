package hcmuaf.edu.vn.BikeEcommerce.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.OrderSigService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/api/verify-order")
public class VerifyOrderAPI extends HttpServlet {
    OrderSigService orderSigService;
    OrderService orderService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            String orderId = objectMapper.readTree(req.getReader()).get("orderId").asText();
            orderSigService = OrderSigService.getInstance();
            orderService = OrderService.getInstance();
            OrderSig orderSig = orderSigService.getSigByOrderId(orderId);
            Order order = orderService.getOrderById(orderId);
            String sigText = orderSig.getSig();
            // check certificate of sigText is revoked or not

        }
    }
}
