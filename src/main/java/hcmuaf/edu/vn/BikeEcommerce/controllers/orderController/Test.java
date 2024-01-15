package hcmuaf.edu.vn.BikeEcommerce.controllers.orderController;

import hcmuaf.edu.vn.BikeEcommerce.atbm.Hash;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.service.AddressService;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.util.Base64;

@WebServlet("/order-test")
public class Test extends HttpServlet {
    OrderService orderService = OrderService.getInstance();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Order order = orderService.getOrderById("240112842cb4");
        System.out.println("orderTest: " + order.toStringForHash());
        AddressService addressService = AddressService.getInstance();
        Address address = addressService.getAddressByAddressId("17860ebe-d6ff-4c74-831e-df57068af3d5");
        System.out.println("address: " + address.getHomeAddress().getBytes().length);
//        System.out.println("address: " + addressService.getAddressByAddressId("17860ebe-d6ff-4c74-831e-df57068af3d5").getFullAddress());
//        resp.setCharacterEncoding("UTF-8");
    resp.getWriter().write(order.toStringForHash());
    }
}
