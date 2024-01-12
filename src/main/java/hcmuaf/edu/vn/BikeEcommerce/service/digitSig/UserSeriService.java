package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig.UserSeriDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class UserSeriService {
    public static UserSeriService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static UserSeriService getInstance(){
        if(instance==null){
            instance=new UserSeriService();
        }
        return instance;
    }
    public List<UserSeri> getAllSeriOfUser(String userId){
        return jdbi.withExtension(UserSeriDAO.class, dao->dao.getAllSeriOfUser(userId));
    }
    public boolean checkSeriAndUser(String userId,String seri){
        return jdbi.withExtension(UserSeriDAO.class,dao->dao.checkSeriAndUser(userId,seri));
    }
    public void insert(UserSeri userSeri){
        jdbi.useExtension(UserSeriDAO.class,dao->dao.insert(userSeri));
    }

    public static void main(String[] args) {
        UserSeriService userSeriService=UserSeriService.getInstance();
//        UserSeri userSeri=new UserSeri();
//        userSeri.setUserId("1");
//        userSeri.setSeri("123");
//        userSeriService.insert(userSeri);
//        System.out.println(userSeriService.checkSeriAndUser("1","123"));

        System.out.println(userSeriService.getAllSeriOfUser("94face32-ca88-4729-b3de-b34a0e390e48").size());
    }

}
