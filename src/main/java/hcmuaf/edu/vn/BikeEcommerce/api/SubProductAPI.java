package hcmuaf.edu.vn.BikeEcommerce.api;

import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.service.CartItemsService;
import hcmuaf.edu.vn.BikeEcommerce.service.SubProduct_colorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/getPriceByColorAndProductId")
public class SubProductAPI extends HttpServlet {
    SubProduct_colorService subProduct_colorService;
    CartItemsService cartItemsService;

    @Override
    public void init() throws ServletException {
        subProduct_colorService = SubProduct_colorService.getInstance();
        cartItemsService = CartItemsService.getInstance();
    }

    /**
     * get price of product by color
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getParameter("productId");
        String cartItemId = req.getParameter("cartItemId");
        String colorId = req.getParameter("colorId");
        CartItem cartItem = cartItemsService.getCartItemByCartItemId(cartItemId);
        double price = 0;
        if (productId == null) {
            price = subProduct_colorService.getPriceByProductIdAndColorId(cartItem.getProductId(), colorId);
        } else {
            price = subProduct_colorService.getPriceByProductIdAndColorId(productId, colorId);
        }
        resp.getWriter().write(price + "");

    }
}
