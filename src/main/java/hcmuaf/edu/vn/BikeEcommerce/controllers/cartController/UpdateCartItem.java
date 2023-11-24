package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.service.CartItemsService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/updateCartItem")
public class UpdateCartItem extends HttpServlet {
    CartItemsService cartItemService;
    ProductService productService;
    Gson gson;

    @Override
    public void init() throws ServletException {
        cartItemService = CartItemsService.getInstance();
        productService = ProductService.getInstance();
        gson = new Gson();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String cartId = req.getParameter("cartId");
        String productId = req.getParameter("productId");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        System.out.println(productId + "---" + quantity);
        CartItem c = cartItemService.getCartItemByCartIdAndProductId(cartId, productId);
        if (c == null) {
            return;
        }
        boolean check = productService.checkProductQuantity(productId, quantity);
        if (check) {
            c.setQuantity(quantity);
            cartItemService.updateCartItem(c);
            resp.getWriter().write("success");
        } else {
            resp.setStatus(400);
        }

    }
}
