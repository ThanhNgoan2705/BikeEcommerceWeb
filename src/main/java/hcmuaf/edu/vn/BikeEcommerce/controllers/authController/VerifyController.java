package hcmuaf.edu.vn.BikeEcommerce.controllers.authController;

import hcmuaf.edu.vn.BikeEcommerce.service.UserService;
import hcmuaf.edu.vn.BikeEcommerce.service.VerifyCodeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/verify")
public class VerifyController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String type = req.getParameter("type");
        System.out.println(email + "---" + type+"form do get verift controller");
        req.getRequestDispatcher("/signUp/Verify.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/plain");
        String email = req.getParameter("email");
        String type = req.getParameter("type");
        String code = (String) req.getParameter("code");
        boolean check= false;
        try {
            check = VerifyCodeService.getInstance().isCorrectVerifyCode(email, code, Integer.parseInt(type));

        }catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println(code + "---" + email + "----" + type);
        if (check) {
            UserService.getInstance().updateUser(email, Integer.parseInt(type));
            VerifyCodeService.getInstance().updateVerifyCode(email, code);
            resp.getWriter().write("Success");
        } else {
            resp.getWriter().write("fail");
        }
        System.out.println(check);
    }
}
