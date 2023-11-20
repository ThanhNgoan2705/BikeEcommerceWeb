package hcmuaf.edu.vn.BikeEcommerce.api;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Favorite;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.FavoriteService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user/api/favorite/*")
public class FavoriteAPI extends HttpServlet {
    Gson gson;
    FavoriteService favoriteService;

    @Override
    public void init() throws ServletException {
        gson = new Gson();
        favoriteService = FavoriteService.getInstance();
    }

    /**
     * lay ra danh sach yeu thich cua 1 user
     * require param : userId
     * URL : /user/api/favorite?userId=1
     * <p>
     * lay ra danh sach yeu thich cua 1 product
     * require param : productId
     * URL : /user/api/favorite?productId=1
     * <p>
     * lay ra yeu thich theo favoriteId
     * URL : /user/api/favorite/<favoriteId>
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
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        String productId = req.getParameter("productId");
        if (userId != null) {
            resp.getWriter().write(gson.toJson(favoriteService.getFavoriteByUserId(userId)));
        } else if (productId != null) {
            resp.getWriter().write(gson.toJson(favoriteService.getFavoriteByProductId(productId)));
        }
    }

    /**
     * them hoac xoa 1 yeu thich
     * require param : token user, productId
     * URL : /user/api/favorite
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
        String productId = req.getParameter("productId");
        Favorite favorite = new Favorite(token.getUserId(), productId);
        favoriteService.insertOrRemoveFavorite(favorite);
    }
}
