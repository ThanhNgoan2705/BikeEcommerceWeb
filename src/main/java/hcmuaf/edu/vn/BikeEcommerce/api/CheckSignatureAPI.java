package hcmuaf.edu.vn.BikeEcommerce.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CheckSig;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.OrderSigService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Base64;

@WebServlet("/api/check-signature")
public class CheckSignatureAPI extends HttpServlet {
    OrderSigService orderSigService;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            String orderId = req.getParameter("orderId");
            byte[] sig = req.getParameter("sig").getBytes();
            CheckSig checkSig = new CheckSig();
            boolean c = checkSig.checkSignature(orderId, sig);
            String sigText = Base64.getEncoder().encodeToString(sig);
            resp.getWriter().write(String.valueOf(c));
            orderSigService = OrderSigService.getInstance();
            OrderSig orderSig = new OrderSig(orderId, sigText);
            orderSigService.insert(orderSig);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
