package hcmuaf.edu.vn.BikeEcommerce.API;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Discount;
import hcmuaf.edu.vn.BikeEcommerce.service.DiscountService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.time.format.DateTimeFormatter;
import java.util.List;

// admin thêm hoặc sửa discount
@WebServlet("/api/discount/*")
public class DiscountAPI extends HttpServlet {
    Gson gson;
    DiscountService discountService;
    // dinh dang ngay thang nam
    DateTimeFormatter formatter;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        discountService = DiscountService.getInstance();
        formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    }

    /**
     * Lấy ra 1 discount
     * URL : /api/discount/{discountId}
     * method: GET
     * <p>
     * Lấy ra tất cả các discount nếu discountId = null
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String discountId = req.getPathInfo();
        if (discountId != null) {
            // Loại bỏ dấu gạch chéo đầu tiên nếu có
            if (discountId.startsWith("/")) {
                discountId = discountId.substring(1);
            }
            System.out.println("Discount Code: " + discountId);
            Discount discount = discountService.getById(discountId);
            String data = gson.toJson(discount);
            resp.getWriter().write(data);
        }
        // neu discountId == null thi lay tat ca discount
        else {
            List<Discount> discountList = discountService.getAll();
            String json = gson.toJson(discountList);
            resp.getWriter().write(json);
        }
    }

    /**
     * Thêm hoặc sửa 1 discount
     * sửa nếu id đã có trong csdl
     * thêm nếu không có id trong csdl
     * <p>
     * Chỉ có admin mơi thao tác được
     * URL: /api/discount
     * Method: POST
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
        Discount discount = new Discount();
        try {
            BeanUtils.populate(discount, req.getParameterMap());
            System.out.println(discount);
            if (discount.getDiscountId() == null) {
                String id = GenerateId.generateId();
                discount.setDiscountId(id);
                discountService.insertDiscount(discount);
                resp.getWriter().write("insert success");
                System.out.println(id);
            } else {
                discountService.updateDiscount(discount);
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
        String discountId = req.getPathInfo();
        if (discountId != null) {
            if (discountId.startsWith("/")) {
                discountId = discountId.substring(1);
            }
            try {
                discountService.deleteDiscount(discountId);
                resp.getWriter().write("delete success");
            } catch (Exception e) {
                resp.getWriter().write("delete fail");
            }

        }
    }
}
