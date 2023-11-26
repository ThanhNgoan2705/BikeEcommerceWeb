package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CartItemsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/deleteProductFromCart")
public class DeleteProductFromCartController extends HttpServlet {

    CartItemsService cartItemsService;

    @Override
    public void init() throws ServletException {

        cartItemsService = CartItemsService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String cartItemId = req.getParameter("cartItemId");
        System.out.println(cartItemId);

        try {
            cartItemsService.deleteCartItem(cartItemId);
            resp.getWriter().write("success");
        } catch (Exception e) {
            resp.setStatus(400);
        }
    }
}
