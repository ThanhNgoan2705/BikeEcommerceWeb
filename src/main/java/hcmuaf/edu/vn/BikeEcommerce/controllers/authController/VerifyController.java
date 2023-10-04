package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.service.VerifyCodeService;
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
    RSA rsa;
    UserService userService;
    TokenService tokenService;
    String status;
    JsonObject jsonObject;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        verifyCodeService = VerifyCodeService.getInstance();
        userService = UserService.getInstance();
        jsonObject = new JsonObject();
        status = "fail";
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
            throw new RuntimeException(e);
        }
        System.out.println(code + "---" + email + "----" + type);
        if (check) {//kiem tra chinh xac code
            if (Integer.parseInt(type) == 1) {//verify email
                userService.updateUser(email, Integer.parseInt(type));
                verifyCodeService.updateVerifyCode(email, code);
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

                // sau do chuyen den trang reset pass
//                req.getRequestDispatcher("/forgotPass/ResetPass.jsp").forward(req, resp);
//                resp.sendRedirect(req.getContextPath() + "/resetPass?token=" + token);
            }
        } else {
            resp.getWriter().write(status);
        }
        System.out.println(check);
    }
}
