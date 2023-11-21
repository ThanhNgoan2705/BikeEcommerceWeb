package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.sendEmail.EmailHelper;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
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

@WebServlet("/forgotPass")
public class ForgotPassController extends HttpServlet {
    UserService userService;
    RSA rsa;

    @Override
    public void init() throws ServletException {
        userService = UserService.getInstance();
        try {
            rsa = RSA.getInstance();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // gui den trang forgot pass
        req.getRequestDispatcher("/forgotPassword.jsp").forward(req, resp);
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // nhan vao 1 email
        // kiem tra email co ton tai trong db khong
        // neu co thi gui code qua mail cho nguoi dung
        // neu khong thi bao loi
        // dan den trang verify code
        String email = req.getParameter("email");
        System.out.println(email);
        boolean check = userService.isEmailOrUserNameAlreadyExists(email);
        if (check) {
            // gui code qua mail cho nguoi dung
            try {
                EmailHelper.sendResetPass(email, GenerateVerifyCode.generateVerifyCode(email, 3));
            } catch (MessagingException e) {
                resp.getWriter().write("send mail false");
            }
            // gui den trang verify code
            try {
                resp.sendRedirect(req.getContextPath() + "/verify" + "?email=" + URLEncoder.encode(rsa.AESencrypt(email)) + "&type=3");
            } catch (Exception e) {
                resp.getWriter().write("encode email false");
            }
        } else {
            // bao loi
            resp.getWriter().write("email is not exists");
            req.setAttribute("error", "Email is not exists");
            req.getRequestDispatcher("/forgotPassword.jsp").forward(req, resp);
        }
        //resp.sendRedirect(req.getContextPath() + "/verify" + "?email=" + <nho ma hoa email>email + "&type=3");

    }
}
