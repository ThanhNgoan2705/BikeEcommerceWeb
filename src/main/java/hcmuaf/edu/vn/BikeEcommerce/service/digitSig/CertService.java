package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig.CertDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import org.jdbi.v3.core.Jdbi;

import java.util.List;

public class CertService {
    private static CertService instance = null;
    Jdbi jdbi = JDBIConnector.get();

    public static CertService getInstance() {
        if (instance == null) {
            instance = new CertService();
        }
        return instance;
    }

    public List<Cert> getAll() {
        return jdbi.withExtension(CertDAO.class, dao -> dao.getAllCert());
    }

    public Cert getBySeri(String seri) {
        return jdbi.withExtension(CertDAO.class, dao -> dao.getCertBySeri(seri));
    }

    public void insert(Cert cert) {
        jdbi.useExtension(CertDAO.class, dao -> dao.insertCert(cert));
    }


    public static void main(String[] args) {
        CertService certService = CertService.getInstance();
        Cert cert = certService.getBySeri("123");
        System.out.println(cert);


    }
}
