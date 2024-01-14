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

@WebServlet("/user/verify-order")
public class VerifyOrderAPI extends HttpServlet {
    OrderSigService orderSigService;
    OrderService orderService;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String userId = token.getUserId();
        try {
            String orderId = req.getParameter("orderId");
            System.out.println("orderId " +orderId);
            orderSigService = OrderSigService.getInstance();
            orderService = OrderService.getInstance();
            OrderSig orderSig = orderSigService.getSigByOrderId(orderId);
            String sigText = orderSig.getSig();
            System.out.println(sigText +" sigText");
            byte[] sig = sigText.getBytes();
            CheckSig checkSig = new CheckSig();
            String seri = checkSig.getSeriOfCertByCMSSigData(sig);
            RevocationCert revocationCert = RevocationCertService.getInstance().getBySeri(seri);
            if (revocationCert != null) {
                resp.getWriter().write("This certificate is revoked");
                return;
            }else {
                if (checkSig.checkSignature(userId,orderId, sig)) {
                    resp.getWriter().write("true");
                } else {
                    resp.getWriter().write("false");
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
    }
}
