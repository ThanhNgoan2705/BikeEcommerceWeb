package hcmuaf.edu.vn.BikeEcommerce.controllers.publicControllers;

import hcmuaf.edu.vn.BikeEcommerce.model.*;
import hcmuaf.edu.vn.BikeEcommerce.service.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/product")
public class ProductController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Category> categories = CategoryService.getInstance().getAll();
        List<Brand> brands = BrandService.getInstance().getAll();
        List<Supplier> suppliers = SupplierService.getInstance().getAllSupplier();
        List<Discount> discounts = DiscountService.getInstance().getAll();
        List<String> wheelSizes = ProductService.getInstance().getAllWheelSize();
        ProductService productService = ProductService.getInstance();
        List<Product> productList = ProductService.getInstance().getAllProduct();
        // pagination
        int rowCount = 9; // number of rows per page
        String page = req.getParameter("page");
        int currentPage = 1;
        if (page != null) {
            currentPage= Integer.parseInt(page); // start from the first page
        }
        int totalRows = productList.size();
        int totalPage = totalRows / rowCount;
        if (totalRows % rowCount > 0) {
            totalPage++;
        }
        // Calculate the start row of the current page
        int startRow = (currentPage - 1) * rowCount;
        List<Product> data = productService.loadProductByPage(startRow, rowCount);
        // Set the current page as a request attribute
        req.setAttribute("data", data);
        req.setAttribute("currentPage", currentPage);
        req.setAttribute("totalPage", totalPage);
        req.setAttribute("suppliers", suppliers);
        req.setAttribute("categories", categories);
        req.setAttribute("brands", brands);
        req.setAttribute("discounts", discounts);
        req.setAttribute("wheelSizes", wheelSizes);

        req.getRequestDispatcher("/product.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }

}
