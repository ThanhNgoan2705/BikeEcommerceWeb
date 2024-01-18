package hcmuaf.edu.vn.BikeEcommerce.controllers.publicControllers;

import hcmuaf.edu.vn.BikeEcommerce.model.*;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.*;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


@WebServlet("/home")
public class HomeController extends HttpServlet {
    CategoryService categoryService;
    ProductService productService;
    CartService cartService;
    ImageProductService imageProductService;
    BrandService brandService;
    DiscountService discountService;

    public void init() throws ServletException {
        categoryService = CategoryService.getInstance();
        productService = ProductService.getInstance();
        cartService = CartService.getInstance();
        imageProductService = ImageProductService.getInstance();
        brandService = BrandService.getInstance();
        discountService = DiscountService.getInstance();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("home");
        request.setAttribute("categories", categoryService.getAll());
        List<Product> productList = productService.getAllProduct();
        Map<Category, Integer> quantityByCategory = new HashMap<>();
        for (Category category : categoryService.getAll()) {
            List<Product> products = productService.getProductByCategoryId(category.getCategoryId());
            quantityByCategory.put(category, products.size());
        }
        // pagination
        int rowCount = 9; // number of rows per page
        String page = request.getParameter("page");
        int currentPage = 1;
        if (page != null) {
            currentPage = Integer.parseInt(page); // start from the first page
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
        request.setAttribute("data", data);
        request.setAttribute("currentPage", currentPage);
        request.setAttribute("totalPage", totalPage);

        request.setAttribute("quantityByCategory", quantityByCategory);
        request.setAttribute("products", productList);

        List<Product> top1Products = productService.getTop1Product();
        request.setAttribute("top1Products", top1Products);

        List<ImageProduct> imageProduct = imageProductService.getTop1ImageProductByProductId(top1Products.get(0).getProductId());
        request.setAttribute("imageProduct", imageProduct);

        List<Brand> brands = brandService.getAll();
        request.setAttribute("brands", brands);

        List<Discount> discounts = discountService.getAll();
        request.setAttribute("discounts", discounts);
        Token token = null;
        int cartTotal = 0;
        try {
            Cookie[] cookieArr = request.getCookies();
            Cookie cookie = null;
            for (Cookie c : cookieArr) {
                if (c.getName().equals("token-bike")) {
                    if (c.getValue() == null) {
                        request.getRequestDispatcher("/logIn.jsp").forward(request, response);
                        return;
                    } else {
                        cookie = c;
                        try {
                            token = TokenService.getInstance().getTokenFromHeader(cookie.getValue());// tao token tu du lieu
                            if (token == null) {
                                request.getRequestDispatcher("/index.jsp").forward(request, response);
                                return;
                            }
                        } catch (NoSuchAlgorithmException | InvalidKeySpecException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
            }

            HttpSession session = request.getSession();
            String userId = (String) session.getAttribute("userId");
            if (userId == null) {
                request.getRequestDispatcher("index.jsp").forward(request, response);
                return;
            }
            User user = UserService.getInstance().getUserByKey(token.getUserId());
            if (user != null) {
                if (user.getRole() == 2) {
                    response.sendRedirect("/admin/dashboard");
                }
                if (user.getRole() == 1) {
                    request.setAttribute("haveUser", true);
                    request.setAttribute("userName", user.getUserName());
                    Cart cart = cartService.getCartByKey(token.getUserId());
                    if (cart != null) {
                        List<CartItem> itemList = cart.getCartItemList();
                        cartTotal = itemList.size();
                        request.setAttribute("cartTotal", cartTotal);
                    }
                } else {
                    request.getRequestDispatcher("/index.jsp").forward(request, response);
                }

            }
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        } catch (Exception e) {
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp);
    }
}
