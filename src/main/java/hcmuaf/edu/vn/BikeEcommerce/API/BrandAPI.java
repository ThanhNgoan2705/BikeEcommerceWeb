package hcmuaf.edu.vn.BikeEcommerce.API;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Brand;
import hcmuaf.edu.vn.BikeEcommerce.service.BrandService;
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

@WebServlet("/api/brand/*")
public class BrandAPI extends HttpServlet {
    Gson gson;
    BrandService brandService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        brandService = BrandService.getInstance();
    }

    /**
     * Lấy danh sách thương hiệu theo category
     * URL: /api/brand?categoryId={categoryId}
     * Method: GET
     * <p>
     * Lấy ra 1 brand
     * URL: /api/brand/{brandId}
     * Method: GET
     * <p>
     * Lấy ra toàn bộ brand nếu không có param
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String categoryId = req.getParameter("categoryId");

        if (categoryId != null) {
            // lấy ra danh sách brand theo category
            List<Brand> brandList = brandService.getBrandByCategoryId(categoryId);
            String json = gson.toJson(brandList);
            resp.getWriter().write(json);
        } else {
            // lấy ra brand theo brandId
            String brandId = req.getPathInfo();
            System.out.println("Brand Code: " + brandId);
            if (brandId != null) {
                if (brandId.startsWith("/")) {
                    brandId = brandId.substring(1);
                }
                Brand brand = brandService.getById(brandId);
                System.out.println(brand);
                String data = gson.toJson(brand);
                resp.getWriter().write(data);
            } else {
                // lấy ra toàn bộ brand
                List<Brand> brandList = brandService.getAll();
                String data = gson.toJson(brandList);
                resp.getWriter().write(data);
            }
        }
    }

    /**
     * Bắt buộc phải có token của admin mới làm được chức năng thêm brand
     * Thêm 1 brand mới
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
        Brand brand = new Brand();
        try {
            BeanUtils.populate(brand, req.getParameterMap());
            // nếu khong có id thì là insert
            if (brand.getBrandId() == null) {
                brand.setBrandId(GenerateId.generateId());
                brandService.insert(brand);
                resp.getWriter().write("insert success");
            } else {
                // nếu có id thì là update
                brandService.update(brand);
                resp.getWriter().write("update success");
            }
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * phải có token của admin thì mới làm được chức năng này.
     * @param req   the {@link HttpServletRequest} object that
     *                  contains the request the client made of
     *                  the servlet
     *
     * @param resp  the {@link HttpServletResponse} object that
     *                  contains the response the servlet returns
     *                  to the client
     *
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String brandId = req.getPathInfo();
        if (brandId.startsWith("/")) {
            brandId = brandId.substring(1);
        }
        try {
            BrandService.getInstance().delete(brandId);
            resp.getWriter().write("success");
        } catch (Exception e) {
            resp.getWriter().write("fail");
        }
    }
}
