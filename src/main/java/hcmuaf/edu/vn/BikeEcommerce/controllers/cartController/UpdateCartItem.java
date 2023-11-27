package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.SubProduct_color;
import hcmuaf.edu.vn.BikeEcommerce.service.CartItemsService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;
import hcmuaf.edu.vn.BikeEcommerce.service.SubProduct_colorService;

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
    SubProduct_colorService subProduct_colorService;
    Gson gson;

    @Override
    public void init() throws ServletException {
        cartItemService = CartItemsService.getInstance();
        productService = ProductService.getInstance();
        subProduct_colorService = SubProduct_colorService.getInstance();
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
            resp.setStatus(400);
            return;
        }
        SubProduct_color subProduct_color = subProduct_colorService.getColorProductByProductIdAndColorId(c.getProductId(), colorId);
        if (subProduct_color == null) {
            resp.setStatus(400);
            resp.getWriter().write("color not found");
            return;
        }
        boolean check = subProduct_color.getInventory()>= quantity ;
        if (check) {
            c.setQuantity(quantity);
            c.setColorId(colorId);
            cartItemService.updateCartItem(c);
            resp.getWriter().write("success");
        } else {
            resp.setStatus(400);
            resp.getWriter().write("out of stock");
        }

    }
}
