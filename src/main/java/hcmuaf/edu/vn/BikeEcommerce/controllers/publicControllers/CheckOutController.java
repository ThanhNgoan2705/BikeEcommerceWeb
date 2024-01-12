package hcmuaf.edu.vn.BikeEcommerce.controllers.publicControllers;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.AddressService;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/user/checkout")
public class CheckOutController extends HttpServlet {
    CartService cartService;
    AddressService addressService;
    Gson gson;

    public void init() throws ServletException {
        cartService = CartService.getInstance();
        addressService = AddressService.getInstance();
        gson = new Gson();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        if (token == null) {
            return;
        }
        String userId = token.getUserId();
        req.setAttribute("haveUser", true);
        List<Address> addressList = addressService.getAllAddressByUserId(userId);
        int cartTotal = 0;
        Cart cart = cartService.getCartByKey(token.getUserId());
        List<CartItem> itemList = cart.getCartItemList();
        cartTotal = itemList.size();
        double totalPrice = 0;
        for (CartItem item : itemList) {
            totalPrice += item.getProduct().getPrice() * item.getQuantity();
        }
        req.setAttribute("addressList", addressList);
        req.setAttribute("itemList", itemList);
        req.setAttribute("cartTotal", cartTotal);
        req.setAttribute("totalPrice", totalPrice);
//        System.out.println(gson.toJson(itemList));
        req.getRequestDispatcher("/checkOut.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String userId = token.getUserId();
        Cart cart = cartService.getCartByKey(token.getUserId());
//        System.out.println("Cart: " + cart);
        if (cart != null) {
            req.setAttribute("cart", cart);
        }
        String addressId = req.getParameter("addressId");
        double shippingFee = 100000.0;
        String orderId = cartService.saveCartItemIntoOrder(userId, addressId, shippingFee);
        System.out.println("orderId: " + orderId);
        resp.sendRedirect(req.getContextPath() + "/user/order?orderId=" + orderId);

    }
}
