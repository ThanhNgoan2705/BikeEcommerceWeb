package hcmuaf.edu.vn.BikeEcommerce.API.productAPI;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/product/*")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Sử dụng getPathInfo() để lấy phần sau gạch chéo (/)
        Gson gson = new Gson();
        String productId = req.getPathInfo();
        if (productId==null){
            List<Product> products = ProductService.getInstance().getAllProduct();
            String json = gson.toJson(products);
            resp.getWriter().write(json);
            return;
        }
        if (productId != null) {
            // Loại bỏ dấu gạch chéo đầu tiên nếu có
            if (productId.startsWith("/")) {
                productId = productId.substring(1);
            }
            System.out.println("Product Code: " + productId);
        }
        Product product = ProductService.getInstance().getProductById(productId);

        String json = gson.toJson(product);
        resp.getWriter().write(json);
    }
}
