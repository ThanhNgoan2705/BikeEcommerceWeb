package hcmuaf.edu.vn.BikeEcommerce.API;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.AddressService;
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

@WebServlet("/user/api/address/*")
public class AddressAPI extends HttpServlet {


    Gson gson;
    AddressService addressService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        addressService = AddressService.getInstance();
    }

    /**
     * Lấy danh sách địa chỉ của 1 user
     * requie param userId
     * Method: GET
     * <p>
     * lấy ra 1 address
     * url: /user/api/address/{addressId}
     * Method: GET
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       /*
        lấy ra 1 address
        url: /user/api/address{addressId}
        Method: GET
        */

        if (req.getPathInfo() != null) {
            String addressId = req.getPathInfo();
            System.out.println("Address Code: " + addressId);
            if (addressId.startsWith("/")) {
                addressId = addressId.substring(1);
            }
            Address address = addressService.getAddressByAddressId(addressId);
            String data = gson.toJson(address);
            resp.getWriter().write(data);
            return;
        }

        /*
         * Lấy danh sách địa chỉ của 1 user
         * requie param userId
         * Method: GET
         */
        String userId = req.getParameter("userId");
        List<Address> addressList = AddressService.getInstance().getAllAddressByUserId(userId);
        String data = gson.toJson(addressList);
        resp.getWriter().write(data);

    }

    /**
     * Thêm 1 địa chỉ cho 1 user(nếu chưa có), cập nhật địa chỉ cho 1 user(nếu đã có)
     * Nhận vào 1 data là 1 address
     * Method: POST
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");

        Address address = new Address();

        try {
            BeanUtils.populate(address, req.getParameterMap());
            // nếu là user thì lấy userId từ token chứ không lấy từ request
//            if (token.getRole().equals("1")){
//                address.setUserId(token.getUserId());
//            }

            if (address.getAddressId() == null) {
                // nếu address null thì xác định là insert
                address.setAddressId(GenerateId.generateId());
                addressService.insertAddress(address);
                resp.getWriter().write("insert success");
                System.out.println("insert success");
            } else {
                // nếu addressId khác null thì xác định là update
                addressService.updateAddress(address);
                resp.getWriter().write("update success");
                System.out.println("update success");
            }
            System.out.println(address.toString());
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * xóa 1 address
     * requie param addressId
     */
    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");

        String addressId = req.getPathInfo();
        if (addressId.startsWith("/")) {
            addressId = addressId.substring(1);
        }
        // Xu lí token nếu addressId là của user khác thì không xóa được
        //
        //
        //


        try {
            AddressService.getInstance().deleteAddressById(addressId);
            resp.getWriter().write("success");
        } catch (Exception e) {
            resp.getWriter().write("fail");
//            chuyen trang 404
        }
    }


}


