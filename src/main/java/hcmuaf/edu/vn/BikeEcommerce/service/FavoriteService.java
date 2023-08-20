package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.FavoriteDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Favorite;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 *  da test va fix by Hoang Hai 21-8-23
 */
public class FavoriteService {
    Jdbi jdbi = JDBIConnector.get();
    public static FavoriteService instance = null;
    public static FavoriteService getInstance() {
        if (instance == null) {
            instance = new FavoriteService();
        }
        return instance;
    }
    public FavoriteService() {
    }
    public List<Favorite> getAllFavorite(){
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getAllFavorite());
    }
    public List<Favorite> getFavoriteByUserId(String userId){
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getFavoriteByUserId(userId));
    }
    public Favorite getFavoriteById(String favoriteId){
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getFavoriteById(favoriteId));
    }
    public List<Favorite> getFavoriteByProductId(String productId){
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getFavoriteByProductId(productId));
    }
    public void insertFavorite(Favorite favorite){
        jdbi.useExtension(FavoriteDAO.class, dao -> dao.insertFavorite(favorite));
    }
//    public void updateFavorite(Favorite favorite){
//        jdbi.useExtension(FavoriteDAO.class, dao -> dao.updateFavorite(favorite));
//    }
    public void deleteFavorite(String id){
        jdbi.useExtension(FavoriteDAO.class, dao -> dao.deleteFavorite(id));
    }
    public void deleteFavoriteByProductIdAndUserId(String productId,String userId){
        jdbi.useExtension(FavoriteDAO.class, dao -> dao.deleteFavoriteByProductIdAndUserId(productId,userId));
    }

    public static void main(String[] args) {
//        System.out.println(FavoriteService.getInstance().getFavoriteById("1"));
//        System.out.println(FavoriteService.getInstance().getFavoriteByProductId("1"));
//        System.out.println(FavoriteService.getInstance().getFavoriteByUserId("user2"));
//        System.out.println(FavoriteService.getInstance().getAllFavorite());

        FavoriteService.getInstance().insertFavorite(new Favorite("user1","3"));
//        System.out.println(FavoriteService.getInstance().getFavoriteById();

    }

}
