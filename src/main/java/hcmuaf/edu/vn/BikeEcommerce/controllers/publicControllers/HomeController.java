package hcmuaf.edu.vn.BikeEcommerce.controllers.publicControllers;

import hcmuaf.edu.vn.BikeEcommerce.model.*;
import hcmuaf.edu.vn.BikeEcommerce.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/home")
public class HomeController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = CategoryService.getInstance();
        request.setAttribute("categories", categoryService.getAll());
        ProductService productService = ProductService.getInstance();

        Map<Category,Integer> quantityByCategory = new HashMap<>();
        for (Category category : categoryService.getAll()) {
            List<Product> products = productService.getProductByCategoryId(category.getCategoryId());
            quantityByCategory.put(category,products.size() );
        }
        request.setAttribute("quantityByCategory", quantityByCategory);

        List<Product> top1Products = productService.getTop1Product();
        request.setAttribute("top1Products", top1Products);

        ImageProductService imageProductService = ImageProductService.getInstance();
        List<ImageProduct> imageProduct = imageProductService.getTop1ImageProductByProductId(top1Products.get(0).getProductId());
        request.setAttribute("imageProduct", imageProduct);

        List<Brand> brands = BrandService.getInstance().getAll();
        request.setAttribute("brands", brands);

        List<Discount> discounts = DiscountService.getInstance().getAll();
        request.setAttribute("discounts", discounts);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
