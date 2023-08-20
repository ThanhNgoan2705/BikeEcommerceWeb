package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CommentDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Comment;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test va fix by Hoang hai 20-8-23
 */
public class CommentService {
    Jdbi jdbi = JDBIConnector.get();
    public static CommentService instance = null;
    public static CommentService getInstance() {
        if (instance == null) {
            instance = new CommentService();
        }
        return instance;
    }
    public CommentService() {
    }
    public List<Comment> getAllComment(){
        return jdbi.withExtension(CommentDAO.class, dao -> dao.getAllComment());
    }
    public List<Comment> getCmtByProductId(String productId){
        return jdbi.withExtension(CommentDAO.class, dao -> dao.getCmtByProductId(productId));
    }
    public List<Comment> getCmtByUserId(String userId){
        return jdbi.withExtension(CommentDAO.class, dao -> dao.getCmtByUserId(userId));
    }
    public Comment getCommentById(String id){
        return jdbi.withExtension(CommentDAO.class, dao -> dao.getCommentById(id));
    }
    public void insertCmt(Comment comment){
        jdbi.useExtension(CommentDAO.class, dao -> dao.insertCmt(comment));
    }
    public void updateCmt(Comment comment){
        jdbi.useExtension(CommentDAO.class, dao -> dao.updateCmt(comment));
    }
    public void deleteCmt(String id){
        jdbi.useExtension(CommentDAO.class, dao -> dao.deleteCmt(id));
    }

    public static void main(String[] args) {
        CommentService commentService = new CommentService();
        List<Comment> comments = commentService.getAllComment();
        System.out.println(comments);
        commentService.insertCmt(new Comment("cmt1","user1","1","content1"));
        System.out.println(commentService.getCommentById("cmt1"));
        commentService.updateCmt(new Comment("cmt1","user1","1","content13457"));
        System.out.println(commentService.getCommentById("cmt1"));
        commentService.deleteCmt("cmt1");
        System.out.println(commentService.getCommentById("cmt1"));

    }
}
