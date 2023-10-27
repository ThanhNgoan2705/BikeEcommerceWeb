package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/addProductToCart")
public class AddProductToCartController extends HttpServlet {
    ProductService productService;
    CartService cartService;

    @Override
    public void init() throws ServletException {
        productService = ProductService.getInstance();
        cartService = CartService.getInstance();
    }

    /**
     * them hoac chinh sua so luong cua i cartItem
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String productId = req.getParameter("productId");
        String quantity = req.getParameter("quantity");
        System.out.println(productId + "---" + quantity);
        Product product = productService.getProductById(productId);
        if (product == null || product.getInventory() < Integer.parseInt(quantity)) {
            return;
        }
        Cart cart = cartService.getCartByKey(token.getUserId());
        System.out.println(cart);
        CartItem i1 = new CartItem();
        i1.setProductId(productId);
        i1.setQuantity(Integer.parseInt(quantity));
        cart.addOrUpdateItemToCart(i1);
        System.out.println("da them 1 san pham");
        resp.getWriter().write("success");
    }
}
