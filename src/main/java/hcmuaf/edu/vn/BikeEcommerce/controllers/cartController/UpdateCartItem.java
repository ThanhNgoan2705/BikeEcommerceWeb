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
        String cartItemId = req.getParameter("cartItemId");
        int quantity = Integer.parseInt(req.getParameter("quantity"));
        String colorId = req.getParameter("colorId");
        System.out.println(cartItemId + "---" + quantity + "---" + colorId);
        CartItem c = cartItemService.getCartItemByCartItemId(cartItemId);
        if (c == null) {
            return;
        }
        boolean check = productService.getProductById(c.getProductId()).getInventory() >= quantity;
        if (check) {
            c.setQuantity(quantity);
            c.setColorId(colorId);
            cartItemService.updateCartItem(c);
            resp.getWriter().write("success");
        } else {
            resp.setStatus(400);
        }

    }
}
