package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.CommentDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Comment;
import org.jdbi.v3.core.Jdbi;

import java.util.List;


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
    public void insertCmt(Comment comment){
        jdbi.useExtension(CommentDAO.class, dao -> dao.insertCmt(comment));
    }
    public void updateCmt(Comment comment){
        jdbi.useExtension(CommentDAO.class, dao -> dao.updateCmt(comment));
    }
    public void deleteCmt(String id){
        jdbi.useExtension(CommentDAO.class, dao -> dao.deleteCmt(id));
    }
}
