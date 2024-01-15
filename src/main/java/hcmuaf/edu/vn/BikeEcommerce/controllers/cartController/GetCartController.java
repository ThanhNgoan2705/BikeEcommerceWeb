package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.SubProduct_color;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;
import hcmuaf.edu.vn.BikeEcommerce.service.ImageProductService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;
import hcmuaf.edu.vn.BikeEcommerce.service.SubProduct_colorService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/user/getCart")
public class GetCartController extends HttpServlet {
    CartService cartService;
    SubProduct_colorService subProduct_colorService;
    ImageProductService imageProductService;
    Gson gson;

    @Override
    public void init() throws ServletException {
        cartService = CartService.getInstance();
        subProduct_colorService = SubProduct_colorService.getInstance();
        imageProductService = ImageProductService.getInstance();
        gson = new Gson();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        Cart cart = cartService.getCartByKey(token.getUserId());
        int cartTotal = 0;
        req.getSession().setAttribute("haveUser", true);
        req.getSession().setAttribute("userName", token.getUserName());
        if (cart == null) {
            System.out.println("cart null");
            return;
        } else {
            List<CartItem> itemList = cart.getCartItemList();
            String imageProductId = "";
            String link = "";
            double price = 0;
            String priceString = "";
            DecimalFormat df = new DecimalFormat("#.000");
            SubProduct_color subProduct_color = new SubProduct_color();
            for (CartItem item : itemList) {
                subProduct_color = subProduct_colorService.getColorProductByProductIdAndColorId(item.getProductId(), item.getColorId());
                price = subProduct_color.getPrice();
                priceString = df.format(price);
                System.out.println(subProduct_color.toString());
                System.out.println(price);
                imageProductId = subProduct_color.getImageProductId();
                List<ImageProduct> imageProduct = imageProductService.getImageProductByProductId(subProduct_color.getProductId());
                for (ImageProduct image : imageProduct) {
                    if (image.getImageProductId().equals(imageProductId)) {
                        link = image.getLink();
                    }
                }
            }
            req.setAttribute("link", link);
            req.setAttribute("price", priceString);
            cartTotal = itemList.size();
            System.out.println(itemList.size());
            req.setAttribute("itemList", itemList);
            req.setAttribute("cartTotal", cartTotal);
        }

        req.getRequestDispatcher("/cart.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        Cart cart = cartService.getCartByKey(token.getUserId());
        if (cart == null) {
            return;
        } else {
            List<CartItem> itemList = cart.getCartItemList();
            for (CartItem item : itemList) {
//                System.out.println(item.getProduct().getName());
            }
            req.setAttribute("itemList", itemList);
//            System.out.println(gson.toJson(itemList));
            resp.getWriter().write(gson.toJson(itemList));
        }
    }
}
