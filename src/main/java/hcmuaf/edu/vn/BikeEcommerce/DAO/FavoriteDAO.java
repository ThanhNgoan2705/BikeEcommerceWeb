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
    List<Favorite> getFavoriteByUserId(@Bind("userId")String userId);

    @SqlQuery(ScirptSQL.getAllFavoriteByProductId)
    List<Favorite> getFavoriteByProductId(@Bind("productId")String productId);

    @SqlQuery(ScirptSQL.getFavoriteById)
    Favorite getFavoriteById(@Bind("favoriteId")String favoriteId);
    @SqlUpdate(ScirptSQL.insertFavorite)
    void insertFavorite(@BindBean Favorite favorite);

    @SqlUpdate(ScirptSQL.updateFavorite)
    void updateFavorite(@BindBean Favorite favorite);

    @SqlUpdate(ScirptSQL.deleteFavorite)
    void deleteFavorite(@Bind("favoriteId")String favoriteId);
@SqlQuery(ScirptSQL.getAllFavorite)
    List<Favorite> getAllFavorite();
@SqlUpdate(ScirptSQL.deleteFavoriteByProductIdAndUserId)
    void deleteFavoriteByProductIdAndUserId(@Bind("productId")String productId,@Bind("userId") String userId);
}
