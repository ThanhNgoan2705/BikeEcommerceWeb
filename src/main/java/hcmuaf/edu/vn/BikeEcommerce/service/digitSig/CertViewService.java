package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.Cert;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.CertView;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;

import java.security.cert.X509Certificate;
import java.time.Instant;
import java.time.LocalDate;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CertViewService {

    public static List<CertView> getCertViewFormUserId(String userId) {
        List<CertView> certViews = new ArrayList<>();
        List<Cert> certs = CertService.getInstance().getByUserId(userId);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        Date dateNow = new Date();
        for (Cert c : certs) {
            CertView temp = new CertView();
            temp.setSeri(c.getSeri());
            X509Certificate certificate = (X509Certificate) c.getCertificate();

            Date dateAfter = ((X509Certificate) certificate).getNotAfter();
            Date dateBefore = ((X509Certificate) certificate).getNotBefore();

            LocalDate localDateDateAfter = dateAfter.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            LocalDate localDateDateBefore = dateBefore.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
            temp.setName(String.valueOf(certificate.getSubjectDN()));
            temp.setStartDate(localDateDateBefore.format(formatter));
            temp.setEndDate(localDateDateAfter.format(formatter));
            RevocationCert revocationCert = RevocationCertService.getInstance().getBySeri(c.getSeri());
            if (revocationCert != null) {
                temp.setStatus("Bị khóa");
            } else if (dateNow.after(dateAfter)) {
                temp.setStatus("Hết hạn");
            } else {
                temp.setStatus("Hoạt Động");
            }
            certViews.add(temp);
        }
        return certViews;
    }
}
