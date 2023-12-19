package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig.OrderSigDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.OrderSig;
import org.jdbi.v3.core.Jdbi;

public class OrderSigService {
    public static OrderSigService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static OrderSigService getInstance(){
        if(instance==null){
            instance=new OrderSigService();
        }
        return instance;
    }
    public OrderSig getSigByOrderId(String orderId){
        return jdbi.withExtension(OrderSigDAO.class, dao->dao.getSigByOrderId(orderId));
    }
    public void insert(OrderSig orderSig){
        jdbi.useExtension(OrderSigDAO.class,dao->dao.insert(orderSig));
    }
    public void delete(String orderId){
        jdbi.useExtension(OrderSigDAO.class,dao->dao.delete(orderId));
    }

    public static void main(String[] args) {
        OrderSigService orderSigService=OrderSigService.getInstance();
        orderSigService.delete("1");
    }
}
