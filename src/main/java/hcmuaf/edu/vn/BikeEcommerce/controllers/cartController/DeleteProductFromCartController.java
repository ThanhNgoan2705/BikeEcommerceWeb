package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/deleteProductFromCart")
public class DeleteProductFromCartController extends HttpServlet {
    CartService cartService;

    @Override
    public void init() throws ServletException {
        cartService = CartService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String productId = req.getParameter("productId");
        System.out.println(productId);
        Cart cart = cartService.getCartByKey(token.getUserId());
        try {
            cart.removeItem(productId);
            resp.getWriter().write("success");
        } catch (Exception e) {
            resp.setStatus(400);
        }
    }
}
