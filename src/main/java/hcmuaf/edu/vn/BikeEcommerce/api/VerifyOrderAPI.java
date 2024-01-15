package hcmuaf.edu.vn.BikeEcommerce.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CheckSig;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.OrderSigService;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.RevocationCertService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;

@WebServlet("/api/verify-order")
public class VerifyOrderAPI extends HttpServlet {
    OrderSigService orderSigService;
    OrderService orderService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        System.out.println("verify order");
        try {

            String orderId = req.getParameter("orderId");
            String userId = OrderService.getInstance().getOrderById(orderId).getUserId();
            System.out.println("orderId " + orderId);
            orderSigService = OrderSigService.getInstance();
            orderService = OrderService.getInstance();
            OrderSig orderSig = orderSigService.getSigByOrderId(orderId);
            String sigText = orderSig.getSig();
            System.out.println(sigText + " sigText");
            byte[] sig = Base64.getDecoder().decode(sigText);
            CheckSig checkSig = new CheckSig();
            Boolean b = checkSig.checkSignature(userId, orderId, sig);
            if (b) {
                resp.getWriter().write("true");
                System.out.println("kiem tra dubng");
            } else {
                resp.getWriter().write("false");
                System.out.println("kiem tra saiii");
            }
        } catch (Exception e) {
            resp.getWriter().write("false");
        }
    }
}
