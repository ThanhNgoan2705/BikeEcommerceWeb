package hcmuaf.edu.vn.BikeEcommerce.api;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;
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

@WebServlet("/api/category/*")
public class CategoryAPI extends HttpServlet {
    Gson gson;
    CategoryService categoryService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        categoryService = CategoryService.getInstance();

    }

    /**
     * Lấy danh sách thương hiệu theo category
     * URL: /api/category/{categoryId}
     * Method: GET
     * Nếu {categoryId} null thì sẽ trả về tất cả
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setCharacterEncoding("UTF-8");
        System.out.println("doGet");
        String categoryId = req.getPathInfo();
        System.out.println("categoryId: " + categoryId);
        // nếu có categoryId thì trả về giá trị của category đó
        if (categoryId != null) {
            if (categoryId.startsWith("/")) {
                categoryId = categoryId.substring(1);
            }
            Category category = CategoryService.getInstance().getById(categoryId);
            String data = gson.toJson(category);
            resp.getWriter().write(data);
        } else {
            // nếu k có thì gửi toàn bộ category
            System.out.println("k có category id");
            List<Category> categoryList = categoryService.getAll();
            String data = gson.toJson(categoryList);
            System.out.println("data: " + data);
            resp.getWriter().write(data);
        }
    }

    /**
     * Thêm mới 1 category
     * URL: /api/category
     * Method: POST
     * <p>
     * Chỉ có admin mới thêm được
     *
     * @param req  an {@link HttpServletRequest} object that
     *             contains the request the client has made
     *             of the servlet
     * @param resp an {@link HttpServletResponse} object that
     *             contains the response the servlet sends
     *             to the client
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //check token admin
        Token token = (Token) req.getAttribute("token");
        int role = Integer.parseInt(token.getRole());
        System.out.println("role: " + role);
        if (role != 2) {
            resp.getWriter().write("you are not admin");
            return;
        }
        req.setCharacterEncoding("UTF-8");
        // thêm mới category
        Category category = new Category();
        System.out.println("edit category: " );
        System.out.println(req.getParameterMap().toString());
        try {
            BeanUtils.populate(category, req.getParameterMap());
            if (category.getCategoryId() == null) {
                category.setCategoryId(GenerateId.generateId());
                System.out.println("category: " + category);
                categoryService.insert(category);
                resp.sendRedirect("/admin/categories");
            } else {
                categoryService.update(category);
                System.out.println("category: " + category);
                resp.getWriter().write("update success");
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * Phải có token admin mới xóa được
     *
     * @param req  the {@link HttpServletRequest} object that
     *             contains the request the client made of
     *             the servlet
     * @param resp the {@link HttpServletResponse} object that
     *             contains the response the servlet returns
     *             to the client
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //check token admin
        Token token = (Token) req.getAttribute("token");
        int role = Integer.parseInt(token.getRole());
        System.out.println("role: " + role);
        if (role != 2) {
            resp.getWriter().write("you are not admin");
            return;
        }
        String categoryId = req.getPathInfo();
        System.out.println("categoryId: " + categoryId);
        if (categoryId != null) {
            if (categoryId.startsWith("/")) {
                categoryId = categoryId.substring(1);
                System.out.println("categoryId: " + categoryId);
            }
            try {
                categoryService.delete(categoryId);
                resp.getWriter().write("success");
            } catch (Exception e) {
                resp.getWriter().write("fail");
            }

        }
    }
}
