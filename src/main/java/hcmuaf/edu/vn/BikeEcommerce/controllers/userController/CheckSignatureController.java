package hcmuaf.edu.vn.BikeEcommerce.controllers.userController;

import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.CheckSig;
import hcmuaf.edu.vn.BikeEcommerce.service.digitSig.OrderSigService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.IOException;
import java.util.Base64;
import java.util.Collection;

@WebServlet("/user/check-signature")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 2,  // 20MB
        maxFileSize = 1024 * 1024 * 10,        // 100MB
        maxRequestSize = 1024 * 1024 * 50  // 500MB
)
public class CheckSignatureController extends HttpServlet {
    OrderSigService orderSigService;


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String userId = token.getUserId();
        boolean c = false;
        byte[] sigFile;
        String sigText = "";
        try {
            String orderId = req.getParameter("orderId");
            System.out.println("orderId cdcsd " + orderId);
            Collection<Part> parts = req.getParts();
            System.out.println(parts.size());
            for (Part part : parts) {
                System.out.println(" file name : " + part.getSubmittedFileName());
                if (part.getSubmittedFileName() != null) {
                    sigFile = part.getInputStream().readAllBytes();
                    sigText = Base64.getEncoder().encodeToString(sigFile);
                    CheckSig checkSig = new CheckSig();
                    c = checkSig.checkSignature(userId, orderId, sigFile);
                }
            }
            if (c) {
                orderSigService = OrderSigService.getInstance();
                OrderSig orderSig = new OrderSig(orderId, sigText);
                orderSigService.insert(orderSig);
                resp.getWriter().write("<script>alert('gdjdj')</script>");
                resp.sendRedirect("/user");
            }
            else {
                resp.sendRedirect("/user/order?orderId="+orderId);
                resp.getWriter().write("<script>alert('Chữ ký không hợp lệ')</script>");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }
}
