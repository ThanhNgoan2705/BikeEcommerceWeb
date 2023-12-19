package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig.RevocationCertDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import org.jdbi.v3.core.Jdbi;

import java.time.Instant;
import java.util.List;

public class RevocationCertService {
    public static RevocationCertService instance = null;
    Jdbi jdbi = JDBIConnector.get();
    public static RevocationCertService getInstance(){
        if(instance==null){
            instance=new RevocationCertService();
        }
        return instance;
    }
    public List<RevocationCert> getAll(){
        return jdbi.withExtension(RevocationCertDAO.class, dao->dao.getAll());
    }
    public RevocationCert getBySeri(String seri){
        return jdbi.withExtension(RevocationCertDAO.class,dao->dao.getBySeri(seri));
    }
    public void insert(RevocationCert revocationCert){
        jdbi.useExtension(RevocationCertDAO.class,dao->dao.insert(revocationCert));
    }
    public void update(RevocationCert revocationCert){
        jdbi.useExtension(RevocationCertDAO.class,dao->dao.update(revocationCert));
    }
    public void delete(String seri){
        jdbi.useExtension(RevocationCertDAO.class,dao->dao.delete(seri));
    }

    public static void main(String[] args) {
        RevocationCertService revocationCertService=RevocationCertService.getInstance();
        RevocationCert revocationCert=new RevocationCert();
        revocationCert.setSeri("123");
        revocationCert.setRevokedAt(Instant.now().getEpochSecond());
        System.out.println(revocationCert);
        revocationCertService.insert(revocationCert);
        System.out.println(revocationCertService.getBySeri("123"));
        revocationCert.setRevokedAt(Instant.now().getEpochSecond()+2000000);
        revocationCertService.update(revocationCert);
        System.out.println(revocationCertService.getBySeri("123"));
        revocationCertService.delete("123");
    }
}
