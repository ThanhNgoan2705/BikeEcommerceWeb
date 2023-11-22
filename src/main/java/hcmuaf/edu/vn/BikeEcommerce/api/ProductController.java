package hcmuaf.edu.vn.BikeEcommerce.api;

import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;
import hcmuaf.edu.vn.BikeEcommerce.utils.JsonUtils;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@WebServlet("/product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10, // 10 MB
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100 // 100 MB
)
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String productId = req.getParameter("productId");
        String action = req.getParameter("action");
        PrintWriter out = resp.getWriter();
        ProductService productService = new ProductService();

        if (action.equalsIgnoreCase("all")){
            List<Product> products = productService.getAllProduct();
            out.println(products);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out = resp.getWriter();


        Product product = new Product();
            try {
                BeanUtils.populate(product,req.getParameterMap());
                ProductService productService = new ProductService();
                if(product.getProductId()==null){
                    productService.insert(product);
                }else
                    productService.update(product);
                out.print(new JsonUtils().toJson(product));
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e) {
                throw new RuntimeException(e);
            }
        System.out.println(product);
        out.print("success");
    }
}
