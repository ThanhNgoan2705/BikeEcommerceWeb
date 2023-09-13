package hcmuaf.edu.vn.BikeEcommerce.API.productAPI;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Product;
import hcmuaf.edu.vn.BikeEcommerce.service.ProductService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/*
  loc sản phẩm theo các điều kiện:
    - category
    - brand
    - supplier
    - discount
    - status
 */
@WebServlet("/products_filter")
public class ProductsFilter extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }

    /*
    Nhận vào 1 json có các node: category, brand, supplier, discount, status.
    Mỗi node là 1 array chứa các id của category, brand, supplier, status.
    Hàm xử lí và lấy tất cả các sản phẩm thỏa mãn các điều kiện trên.
    Trả về 1 json chứa các sản phẩm thỏa mãn.
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            ObjectMapper objectMapper = new ObjectMapper();
            JsonNode jsonNode = objectMapper.readTree(req.getReader());

            JsonNode categoryNode = jsonNode.get("category");
            JsonNode brandNode = jsonNode.get("brand");
            JsonNode supplierNode = jsonNode.get("supplier");
            JsonNode discountNode = jsonNode.get("discount");
            JsonNode statusNode = jsonNode.get("status");

            List<String> categoryList = new ArrayList<>();
            List<String> brandList = new ArrayList<>();
            List<String> supplierList = new ArrayList<>();
            boolean isDiscount = false;
            List<String> statusList = new ArrayList<>();

            if (categoryNode != null && categoryNode.isArray()) {
                for (JsonNode element : categoryNode) {
                    categoryList.add(element.asText());
                }
            }
            if (brandNode != null && brandNode.isArray()) {
                for (JsonNode element : brandNode) {
                    brandList.add(element.asText());
                }
            }

            if (supplierNode != null && supplierNode.isArray()) {
                for (JsonNode element : supplierNode) {
                    supplierList.add(element.asText());
                }
            }
            if (discountNode != null) {
                isDiscount = discountNode.asBoolean();
            }
            if (statusNode != null && statusNode.isArray()) {
                for (JsonNode element : statusNode) {
                    statusList.add(element.asText());
                }
            }

            System.out.println("categoryList: " + categoryList);
            System.out.println("supplierList: " + supplierList);
            System.out.println("brandList: " + brandList);
            System.out.println("isDiscount: " + isDiscount);
            System.out.println("statusList: " + statusList);

            Set<Product> productSet = new HashSet<>(ProductService.getInstance().getAllProduct());
            if (categoryList.size() > 0) {
                for (String categoryId : categoryList) {
                    List<Product> productsBycategory = ProductService.getInstance().getProductByCategoryId(categoryId);
                    productSet.retainAll(productsBycategory);
                }
            }
            if (brandList.size() > 0) {
                for (String brandId : brandList) {
                    List<Product> productsByBrand = ProductService.getInstance().getProductByBrandId(brandId);
                    productSet.retainAll(productsByBrand);
                }
            }
            if (supplierList.size() > 0) {
                for (String supplierId : supplierList) {
                    List<Product> productsBySupplier = ProductService.getInstance().getProductBySupplierId(supplierId);
                    productSet.retainAll(productsBySupplier);
                }
            }
            if (isDiscount) {
                List<Product> productsByDiscount = ProductService.getInstance().getProductByDiscount();
                productSet.retainAll(productsByDiscount);
            }
            if (statusList.size() > 0) {
                for (String status : statusList) {
                    List<Product> productsByStatus = ProductService.getInstance().getProductByStatus(status);
                    productSet.retainAll(productsByStatus);
                }
            }
            Gson gson = new Gson();
            String data = gson.toJson(productSet);
            resp.getWriter().write(data);
        } catch (Exception e) {
            e.printStackTrace();
            // chuyen huong 404
        }

    }
}
