package hcmuaf.edu.vn.BikeEcommerce.controllers;

import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;
import hcmuaf.edu.vn.BikeEcommerce.service.ImageProductService;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/home")
public class HomeController extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryService categoryService = CategoryService.getInstance();
        request.setAttribute("categories", categoryService.getAll());
        ProductService productService = ProductService.getInstance();
        request.setAttribute("products", productService.getAllProduct());

        Map<String, Integer> quantityByCategory = new HashMap<>();
        for (String categoryName : categoryService.getAllCategoryName()) {
            quantityByCategory.put(categoryName, productService.getProductByCategoryName(categoryName).size());
        }
        request.setAttribute("quantityByCategory", quantityByCategory);

        List<Product> top1Products = productService.getTop1Product();
        request.setAttribute("top1Products", top1Products);
        ImageProductService imageProductService = ImageProductService.getInstance();
        List<ImageProduct> imageProduct = new ArrayList<>();
        for (Product top1Product : top1Products) {
            imageProduct.addAll(imageProductService.getTop1ImageProductByProductId(top1Product.getProductId()));
        }
        request.setAttribute("imageProduct", imageProduct);

        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
