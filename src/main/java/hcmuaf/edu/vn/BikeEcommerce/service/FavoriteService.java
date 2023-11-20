package hcmuaf.edu.vn.BikeEcommerce.service;

import hcmuaf.edu.vn.BikeEcommerce.DAO.FavoriteDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.Favorite;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

/**
 * da test va fix by Hoang Hai 21-8-23
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

    public List<Favorite> getAllFavorite() {
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getAllFavorite());
    }

    public List<Favorite> getFavoriteByUserId(String userId) {
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getFavoriteByUserId(userId));
    }

    public List<Favorite> getFavoriteByProductId(String productId) {
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.getFavoriteByProductId(productId));
    }

    public void insertOrRemoveFavorite(Favorite favorite) {
        if (hasFavoriteByUserIdAndProductId(favorite.getUserId(), favorite.getProductId())) {
            jdbi.useExtension(FavoriteDAO.class, dao -> dao.deleteFavorite(favorite));
        } else {
            jdbi.useExtension(FavoriteDAO.class, dao -> dao.insertFavorite(favorite));
        }
    }

    public boolean hasFavoriteByUserIdAndProductId(String userId, String productId) {
        return jdbi.withExtension(FavoriteDAO.class, dao -> dao.hasFavoriteByUserIdAndProductId(userId, productId));
    }

    public static void main(String[] args) {
        FavoriteService.getInstance().insertOrRemoveFavorite(new Favorite("user1", "3"));
        System.out.println(FavoriteService.getInstance().hasFavoriteByUserIdAndProductId("user1", "1"));
    }

}
