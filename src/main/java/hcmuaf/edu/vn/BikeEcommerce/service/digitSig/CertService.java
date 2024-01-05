package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.DAO.digitSig.CertDAO;
import hcmuaf.edu.vn.BikeEcommerce.db.JDBIConnector;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.CertView;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.UserSeri;
import org.jdbi.v3.core.Jdbi;

import java.security.cert.X509Certificate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
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

    public List<Cert> getByUserId(String userId) {
        List<UserSeri> userSeris = UserSeriService.getInstance().getAllSeriOfUser(userId);
        List<Cert> result = new ArrayList<>();
        for (UserSeri u : userSeris) {
            Cert certTemp = getBySeri(u.getSeri());
            result.add(certTemp);
        }
        return result;
    }

    public void insert(Cert cert) {
        jdbi.useExtension(CertDAO.class, dao -> dao.insertCert(cert));
    }


    public static void main(String[] args) {
        CertService certService = CertService.getInstance();
        List<Cert> certs = certService.getByUserId("94face32-ca88-4729-b3de-b34a0e390e48");
        System.out.println(certs.size());
        X509Certificate certificate = (X509Certificate) certs.get(0).getCertificate();
        System.out.println(certificate.toString());

//        List<CertView> certViews = new ArrayList<>();
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//        Date dateNow = new Date();
//        for (Cert c : certs) {
//            CertView temp = new CertView();
//            temp.getSeri(c.getSeri());
//            X509Certificate certificate = (X509Certificate) c.getCertificate();
//
//            Date dateAfter = ((X509Certificate) certificate).getNotAfter();
//            Date dateBefore = ((X509Certificate) certificate).getNotBefore();
////            Instant instant = date.toInstant();
////            LocalDate localDate = instant.atZone(ZoneId.systemDefault()).toLocalDate();
////            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
//            temp.setName(String.valueOf(certificate.getSubjectDN()));
//            temp.setStartDate(String.valueOf(certificate.getNotBefore()));
//            temp.setEndDate(String.valueOf(certificate.getNotAfter()));
//            certViews.add(temp);
//        }
//        System.out.println(certViews.size());

    }
}
