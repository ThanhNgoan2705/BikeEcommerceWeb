package hcmuaf.edu.vn.BikeEcommerce.controllers.cartController;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.CartItem;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet("/getCart")
public class GetCartController extends HttpServlet {
    ProductService productService;
    Gson gson ;
    @Override
    public void init() throws ServletException {
        productService = ProductService.getInstance();
        gson = new Gson();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        HashMap<String, Integer> cart = (HashMap<String, Integer>) session.getAttribute("cart");
        if (cart == null) {
            return;
        }else {
            List<CartItem> itemList = new ArrayList<>();
            for (String key : cart.keySet()) {
                CartItem item = new CartItem(key,cart.get(key));
                Product product = productService.getProductById(key);
                item.setProduct(product);
                itemList.add(item);
            }
            req.setAttribute("itemList",itemList);
            System.out.println(gson.toJson(itemList));
            resp.getWriter().write(gson.toJson(itemList));
        }
    }
}
