package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.sendEmail.EmailHelper;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateVerifyCode;

import javax.mail.MessagingException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sendVerifyCode")
public class SendVerifyCode extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        int type = Integer.parseInt(req.getParameter("type"));
        System.out.println(email+"---"+type);
        try {
            EmailHelper.sendVerifyCode(email, GenerateVerifyCode.generateVerifyCode(email, type));
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        resp.getWriter().write("success!");

    }
}
