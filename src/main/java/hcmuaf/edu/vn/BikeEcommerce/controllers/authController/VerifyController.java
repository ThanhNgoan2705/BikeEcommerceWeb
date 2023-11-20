package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import hcmuaf.edu.vn.BikeEcommerce.model.Cart;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.service.CartService;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.service.VerifyCodeService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.RSA;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@WebServlet("/verify")
public class VerifyController extends HttpServlet {
    Gson gson;
    VerifyCodeService verifyCodeService;
    CartService cartService;
    RSA rsa;
    UserService userService;
    TokenService tokenService;
    String status;
    JsonObject jsonObject;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        verifyCodeService = VerifyCodeService.getInstance();
        cartService = CartService.getInstance();
        userService = UserService.getInstance();
        status = "fail";
        jsonObject = new JsonObject();
        jsonObject.addProperty("status", status);
        try {
            tokenService = TokenService.getInstance();
            rsa = RSA.getInstance();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String type = req.getParameter("type");
        System.out.println(email + "---" + type + "form do get verift controller");
        req.getRequestDispatcher("/signUp/Verify.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        String email = req.getParameter("email");
        String type = req.getParameter("type");
        String code = (String) req.getParameter("code");
        boolean check = false;
        System.out.println(email);
        try {
            email = rsa.ASEdecrypt(email);
            System.out.println(email);
            check = verifyCodeService.isCorrectVerifyCode(email, code, Integer.parseInt(type));
        } catch (Exception e) {
            System.out.println("loi o dong 68");
            throw new RuntimeException(e);
        }
        System.out.println(code + "---" + email + "----" + type);
        if (check) {//kiem tra chinh xac code
            if (Integer.parseInt(type) == 1) {//verify email
                userService.updateUser(email, 1);
                verifyCodeService.updateVerifyCode(email, code);
                User user = userService.getUserByKey(email);
                cartService.insertCart(new Cart(GenerateId.generateId(),user.getUserId(),null));
                status = "verify email Success";
                jsonObject.addProperty("status", status);
                resp.getWriter().write(jsonObject.toString());
            }
            if (Integer.parseInt(type) == 3) {//verify forgot pass
                // cap cho 1 token de doi mk theo email
                String token = tokenService.genTokenResetPass(email);
//                req.setAttribute("token", token);
                System.out.println(token);
                status = "verify forgot pass Success";
                jsonObject.addProperty("status", status);
                jsonObject.addProperty("token", token);
                resp.getWriter().write(jsonObject.toString());
            }
        } else {
            resp.getWriter().write(jsonObject.toString());
        }
        System.out.println(check);
    }
}
