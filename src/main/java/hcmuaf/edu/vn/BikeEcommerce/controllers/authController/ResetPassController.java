package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.TokenService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.InvalidKeySpecException;

@WebServlet("/resetPass")
public class ResetPassController extends HttpServlet {
    TokenService tokenService;
    UserService userService;

    @Override
    public void init() throws ServletException {
        userService = UserService.getInstance();
        try {
            tokenService = TokenService.getInstance();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        } catch (InvalidKeySpecException e) {
            throw new RuntimeException(e);
        }

    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/forgotPass/ResetPass.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String tokenData = req.getParameter("token");
        String email = null;
        if (tokenData != null) {
            try {
                // kiem tra token co hop le khong
                email = tokenService.getEmailFromTokenResetPass(tokenData);
            } catch (Exception e) {
                resp.getWriter().write("false");
            }
            System.out.println(email);
        }
        String pass = req.getParameter("pass");
        String rePass = req.getParameter("rePass");
        System.out.println(tokenData);
        System.out.println(pass);
        System.out.println(rePass);
        if (pass.equals(rePass)) {
            //update pass
            User user = userService.getUserByKey(email);
            user.setPass(pass);
            userService.updateUserPassword(user);
            resp.getWriter().write("reset pass success");
        } else {
            // bao loi
            resp.getWriter().write("reset pass fail");
        }
    }
}

