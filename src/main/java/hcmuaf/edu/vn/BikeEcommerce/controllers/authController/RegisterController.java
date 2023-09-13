package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;


import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.sendEmail.EmailHelper;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateSalt;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("signUp/Register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String userName = req.getParameter("userName");
        String pass = req.getParameter("pass");
        String rePass = req.getParameter("rePass");
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
        resp.sendRedirect(req.getContextPath() + "/verify" + "?email=" + email + "&type=1");
    }

}
