package hcmuaf.edu.vn.BikeEcommerce.api;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.ImageProduct;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/api/pagination")
public class PaginationAPI extends HttpServlet {
    Gson gson;
    ProductService productService;
    public void init() throws ServletException {
        gson = new Gson();
        productService = ProductService.getInstance();
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        String page = req.getParameter("page");
        List<Product> list = ProductService.getInstance().getAllProduct();
        int currentPage = 1;
        if (page != null) {
            currentPage= Integer.parseInt(page); // start from the first page
        }
        int rowCount = 9;
        System.out.println("rowCount"+rowCount);
        System.out.println("currentPage"+currentPage);
        // Calculate the total number of pages
        int totalRows = list.size();
        System.out.println("totalRows"+totalRows);
        int totalPage = totalRows / rowCount;
        System.out.println("totalPage"+totalPage);
        // Calculate the start row of the current page
        int startRow = (currentPage - 1) * rowCount;
        System.out.println("startRow"+startRow);
        // Calculate the end row of the current page
        int endRow = startRow + rowCount;
        System.out.println("endRow"+endRow);
        // Get data of the current page
        list = productService.loadProductByPage(startRow, rowCount);
        System.out.println("list"+list);
        System.out.println("list"+list.size());
        // Set the data as a request attribute
        resp.getWriter().write(gson.toJson(list));
        // Create a request attribute for page information
        req.setAttribute("currentPage", currentPage);
        req.setAttribute("totalPage", totalPage);
        req.setAttribute("recordsPerPage", rowCount);


    }
    private List<Product> getData( List<Product> list,int startRow, int rowCount) {
        return list.subList(startRow, Math.min(startRow + rowCount, list.size()));
    }
}
