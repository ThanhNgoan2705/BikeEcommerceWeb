package hcmuaf.edu.vn.BikeEcommerce.controllers.adminController;

import hcmuaf.edu.vn.BikeEcommerce.model.Category;
import hcmuaf.edu.vn.BikeEcommerce.model.User;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CategoryService;
import hcmuaf.edu.vn.BikeEcommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/admin/categories")
public class CategoriesController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       resp.setCharacterEncoding("UTF-8");
        Token token = (Token) req.getAttribute("token");
        if (token != null) {
            System.out.println("token: " + token);
            User user = UserService.getInstance().getUserByKey(token.getUserId());
            req.getSession().setAttribute("user", user);
            req.getSession().setAttribute("userId", user.getUserId());
            req.getSession().setAttribute("haveUser", true);
            req.getSession().setAttribute("userName", user.getUserName());
        }
        // lấy danh sách category parent where level = 1
        List<Category> categoryParentList = CategoryService.getInstance().getAllParent(1);
        System.out.println(" parent"+categoryParentList);
        req.setAttribute("parentList", categoryParentList);
        req.getRequestDispatcher("/admin/category.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        super.doPost(req, resp);
    }
}
