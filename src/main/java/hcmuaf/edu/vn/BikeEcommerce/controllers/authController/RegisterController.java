package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;


import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.sendEmail.EmailHelper;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateSalt;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.RSA;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;
import java.security.NoSuchAlgorithmException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    UserService userService;
    RSA rsa;

    @Override
    public void init() throws ServletException {
        userService = UserService.getInstance();
        try {
            rsa = RSA.getInstance();
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String userName = req.getParameter("userName");
        String pass = req.getParameter("pass");
//        String rePass = req.getParameter("rePass");
        System.out.println(email + "---" + userName + "---" + pass + "---" + "form do post register controller");
        User user = new User();
        user.setEmail(email);
        user.setUserName(userName);
        user.setPass(pass);
        user.setRole(0);//wating verify email
        user.setUserId(GenerateId.generateId());
        user.setSalt(GenerateSalt.generateSalt());

        UserService.getInstance().insertUser(user);
//        String email = "a@gmail.com";
        try {
            EmailHelper.sendVerifyCode(email, GenerateVerifyCode.generateVerifyCode(email, 1));
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        try {
            resp.sendRedirect(req.getContextPath() + "/verify" + "?email=" + URLEncoder.encode(rsa.AESencrypt(email)) + "&type=1");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
