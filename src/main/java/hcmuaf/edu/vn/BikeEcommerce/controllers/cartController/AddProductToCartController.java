package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/addProductToCart")
public class AddProductToCartController extends HttpServlet {
    ProductService productService;

    @Override
    public void init() throws ServletException {
        productService = ProductService.getInstance();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        String quantity = req.getParameter("quantity");
        System.out.println(productId + "---" + quantity);
        Product product = productService.getProductById(productId);
        if (product == null || product.getInventory() < Integer.parseInt(quantity)) {
            return;
        }
        HashMap<String,Integer> cart = (HashMap<String, Integer>) req.getSession().getAttribute("cart");
        if (cart == null) {
            cart = new HashMap<>();
        }
        if (cart.containsKey(productId)) {
            cart.put(productId, cart.get(productId) + Integer.parseInt(quantity));
            System.out.println(productId+"  "+cart.get(productId));
            resp.getWriter().write( productId+"  "+cart.get(productId) );
        } else {
            cart.put(productId, Integer.parseInt(quantity));
            System.out.println(productId);
            resp.getWriter().write(productId);
        }
        req.getSession().setAttribute("cart", cart);
    }
}
