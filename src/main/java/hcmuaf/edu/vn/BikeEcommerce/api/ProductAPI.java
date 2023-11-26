package hcmuaf.edu.vn.BikeEcommerce.api;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@WebServlet("/api/product/*")
public class ProductAPI extends HttpServlet {
    Gson gson;
    ProductService productService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        productService = ProductService.getInstance();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Sử dụng getPathInfo() để lấy phần sau gạch chéo (/)
        String productId = req.getPathInfo();
        if (productId == null) {
            List<Product> products = productService.getAllProduct();
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
            Product product = productService.getProductById(productId);
            String json = gson.toJson(product);
            resp.getWriter().write(json);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Product product = new Product();
        try {
            BeanUtils.populate(product, req.getParameterMap());
            if (product.getProductId() == null) {
                product.setProductId(GenerateId.generateProductId(product.getCategoryId()));
//                productService.insert(product);
                resp.getWriter().write("insert success");
            } else {
//                productService.update(product);
                resp.getWriter().write("update success");
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String productId = req.getPathInfo();
        if (productId != null) {
            // Loại bỏ dấu gạch chéo đầu tiên nếu có
            if (productId.startsWith("/")) {
                productId = productId.substring(1);
            }
            System.out.println("Product Code: " + productId);
            try {
               productService.delete(productId);
                resp.getWriter().write("delete success");
            } catch (Exception e) {
                resp.getWriter().write("delete fail");
            }
        }

    }

    // thay doi status san pham
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }
}
