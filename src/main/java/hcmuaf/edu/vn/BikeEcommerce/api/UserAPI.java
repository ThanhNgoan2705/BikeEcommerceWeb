package hcmuaf.edu.vn.BikeEcommerce.API;


import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/user/api/*")
public class UserAPI extends HttpServlet {
    Gson gson;
    UserService userService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        userService = UserService.getInstance();
    }

    /**
     * Lấy thông tin user
     * URL: /user/api/{userId}
     * Method: GET
     * <p>
     * Lấy tất cả user - chỉ có admin mới lấy được
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String userId = req.getPathInfo();
        if (userId == null) {
            Token token = (Token) req.getAttribute("token");
            if (token == null) {
                resp.getWriter().write("null");
                return;
            } else {
                if (token.getRole().equals("2")) {
                    String data = gson.toJson(userService.getAllUser());
                    resp.getWriter().write(data);
                    return;
                }
            }
        }
        if (userId != null) {
            // Loại bỏ dấu gạch chéo đầu tiên nếu có
            if (userId.startsWith("/")) {
                userId = userId.substring(1);
            }
            System.out.println("userId Code: " + userId);
        }
        User user = userService.getUserByKey(userId);
        String data = gson.toJson(user);
        resp.getWriter().write(data);
    }

    /**
     * <p>- Đổi password
     * <p>- URL: /user/api
     * <p>- Method: POST
     * <p>- Admin va user đều có thể đổi mật khẩu
     * <p>- Cần truyền vào các param sau:
     * <p> + token: token của user đang đăng nhập
     * <p> + oldPass: mật khẩu cũ
     * <p> + newPass: mật khẩu mới
     * <p> + reNewPass: nhập lại mật khẩu mới
     * Đầu tiên kiểm tra newPass và reNewPass có giống nhau không, nếu không giống thì trả về lỗi
     * Lấy userId từ token
     * Kiểm tra oldPass có đúng không, nếu đúng thì đổi mật khẩu
     *
     * @param req  an {@link HttpServletRequest} object that
     *             contains the request the client has made
     *             of the servlet
     * @param resp an {@link HttpServletResponse} object that
     *             contains the response the servlet sends
     *             to the client
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String newPass = req.getParameter("newPass");
        String reNewPass = req.getParameter("reNewPass");
        String oldPass = req.getParameter("oldPass");
        if (!newPass.equals(reNewPass)) {
            resp.getWriter().write("new pass not same repass");
            return;
        }
        User user = userService.loginByUserNameOrEmail(token.getUserName(), oldPass);
        System.out.println("oldPass: " + oldPass);
        System.out.println("user: " + user);
        if (user != null) {
            user.setPass(newPass);
            userService.updateUserPassword(user);
            resp.getWriter().write("changePass success");
            System.out.println("changePass success");
        } else resp.getWriter().write("changePass fail");
    }

    // thay doi role cua user (admin moi co the lam duoc)
    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        if (token.getRole().equals("2")) {
            String userId = req.getParameter("userId");
            String role = req.getParameter("role");
            User user = userService.getUserByKey(userId);
            userService.updateUser(user.getEmail(), Integer.parseInt(role));
            resp.getWriter().write("update role success " + role);
        } else resp.getWriter().write("update role fail");
    }
}
