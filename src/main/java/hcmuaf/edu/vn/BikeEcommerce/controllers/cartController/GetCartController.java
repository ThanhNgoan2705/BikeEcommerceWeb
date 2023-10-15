package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getCart")
public class GetCartController extends HttpServlet {
    CartService cartService;
    ProductService productService;
    Gson gson;

    @Override
    public void init() throws ServletException {
        cartService = CartService.getInstance();
        productService = ProductService.getInstance();
        gson = new Gson();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        Cart cart = cartService.getCartByKey(userId);
        if (cart == null) {
            return;
        } else {
            List<CartItem> itemList = cart.getCartItemList();
            req.setAttribute("itemList", itemList);
            System.out.println(gson.toJson(itemList));
            resp.getWriter().write(gson.toJson(itemList));
        }
    }
}
