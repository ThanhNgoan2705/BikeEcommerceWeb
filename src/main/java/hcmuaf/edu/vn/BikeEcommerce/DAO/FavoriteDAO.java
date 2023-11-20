package hcmuaf.edu.vn.BikeEcommerce.DAO;

import hcmuaf.edu.vn.BikeEcommerce.model.Favorite;
import org.jdbi.v3.sqlobject.config.RegisterBeanMapper;
import org.jdbi.v3.sqlobject.customizer.Bind;
import org.jdbi.v3.sqlobject.customizer.BindBean;
import org.jdbi.v3.sqlobject.statement.SqlQuery;
import org.jdbi.v3.sqlobject.statement.SqlUpdate;

import java.util.List;

@RegisterBeanMapper(Favorite.class)
public interface FavoriteDAO {
    @SqlQuery(ScirptSQL.getAllFavoriteByUserId)
    List<Favorite> getFavoriteByUserId(@Bind("userId") String userId);

    @SqlQuery(ScirptSQL.getAllFavoriteByProductId)
    List<Favorite> getFavoriteByProductId(@Bind("productId") String productId);

    @SqlUpdate(ScirptSQL.insertFavorite)
    void insertFavorite(@BindBean Favorite favorite);

    @SqlUpdate(ScirptSQL.deleteFavorite)
    void deleteFavorite(@BindBean Favorite favorite);

    @SqlQuery(ScirptSQL.getAllFavorite)
    List<Favorite> getAllFavorite();

    @SqlQuery(ScirptSQL.hasFavoriteByUserIdAndProductId)
    Boolean hasFavoriteByUserIdAndProductId(@Bind("userId") String userId, @Bind("productId") String productId);
}
