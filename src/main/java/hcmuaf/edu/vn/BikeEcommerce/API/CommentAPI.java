package hcmuaf.edu.vn.BikeEcommerce.API;

import com.google.gson.Gson;
import hcmuaf.edu.vn.BikeEcommerce.model.Comment;
import hcmuaf.edu.vn.BikeEcommerce.model.sercurity.Token;
import hcmuaf.edu.vn.BikeEcommerce.service.CommentService;
import hcmuaf.edu.vn.BikeEcommerce.toolSecurity.GenerateId;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

@WebServlet("/user/api/comment/*")
public class CommentAPI extends HttpServlet {
    Gson gson;
    CommentService commentService;

    @Override
    public void init() {
        commentService = CommentService.getInstance();
        gson = new Gson();
    }

    /**
     * Lấy ra tất cả comment của 1 sản phẩm
     * requeire param : productId
     * URL : /comment?productId=1
     * <p>
     * Lấy ra tất cả comment của 1 user
     * requeire param : userId
     * URL : /comment?userId=1
     * <p>
     * Lay ra comment theo id
     * URL : /comment/<commentId>
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
        String productId = req.getParameter("productId");
        String userId = req.getParameter("userId");
        String commentId = req.getPathInfo();
        if (commentId != null) {
            if (commentId.startsWith("/")) {
                commentId = commentId.substring(1);
            }
            resp.getWriter().write(gson.toJson(commentService.getCommentById(commentId)));
        } else if (productId != null) {
            resp.getWriter().write(gson.toJson(commentService.getCmtByProductId(productId)));
        } else if (userId != null) {
            resp.getWriter().write(gson.toJson(commentService.getCmtByUserId(userId)));
        } else {
            resp.getWriter().write(gson.toJson(commentService.getAllComment()));
        }
    }

    /**
     * Them cmt cho san pham
     * requiet token user, productId, content
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
        Comment comment = new Comment();
        try {
            BeanUtils.populate(comment, req.getParameterMap());
            comment.setUserId(token.getUserId());
            if (comment.getCommentId() == null) {
                comment.setCommentId(GenerateId.generateId());
                commentService.insertCmt(comment);
                resp.getWriter().write("insert success");
            } else {
                Comment cmt = commentService.getCommentById(comment.getCommentId());
                if (cmt.getUserId().equals(token.getUserId())) {
                    commentService.updateCmt(comment);
                    resp.getWriter().write("update success");
                } else resp.getWriter().write("wrong user");
            }
        } catch (InvocationTargetException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Token token = (Token) req.getAttribute("token");
        String commentId = req.getPathInfo();
        if (commentId != null) {
            if (commentId.startsWith("/")) {
                commentId = commentId.substring(1);
            }
            Comment cmt = commentService.getCommentById(commentId);
            //user cos the xoa cmt cua chinh minh, admin co the xoa cmt cua bat ky ai
            if (cmt.getUserId().equals(token.getUserId()) || token.getRole().equals("2")) {
                commentService.deleteCmt(commentId);
                resp.getWriter().write("delete success");
            } else resp.getWriter().write("wrong user");
        } else resp.getWriter().write("commentId is null");
    }
}
