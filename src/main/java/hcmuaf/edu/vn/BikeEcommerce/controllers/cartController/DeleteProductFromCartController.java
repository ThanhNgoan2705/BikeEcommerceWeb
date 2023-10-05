package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

@WebServlet("/deleteProductFromCart")
public class DeleteProductFromCartController extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        String quantity = req.getParameter("quantity");
        System.out.println(productId);
        HashMap<String, Integer> cart = (HashMap<String, Integer>) req.getSession().getAttribute("cart");
        if (cart != null && quantity != null && cart.containsKey(productId) && Integer.parseInt(quantity) < cart.get(productId)) {
            cart.put(productId, cart.get(productId) - Integer.parseInt(quantity));
            resp.getWriter().write("delete" + productId + " " + quantity);
        }
        if (cart != null && quantity == null) {
            cart.remove(productId);
            resp.getWriter().write("delete" + productId);
        }
        req.getSession().setAttribute("cart", cart);
    }
}
