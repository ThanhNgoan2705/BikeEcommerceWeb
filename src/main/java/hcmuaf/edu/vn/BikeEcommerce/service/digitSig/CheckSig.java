package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.atbm.Hash;
import hcmuaf.edu.vn.BikeEcommerce.atbm.KeyGen;
import hcmuaf.edu.vn.BikeEcommerce.atbm.SignInData;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.CMSSignedData;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.OperatorCreationException;

import java.io.FileInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.Collection;

public class CheckSig {

    OrderService orderService = OrderService.getInstance();
    UserSeriService userSeriService = UserSeriService.getInstance();
    RevocationCertService revocationCertService = RevocationCertService.getInstance();

    public CheckSig() {
    }

    public boolean checkSignature(String userId, String orderId, byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException, IOException {
        String seri = getSeriOfCertByCMSSigData(sig);
        System.out.println("seri: " + seri);
        if (revocationCertService.getBySeri(seri) != null) {// check cert is revoked
            System.out.println("cert is revoked");
            return false;
        }
        if (!userSeriService.checkSeriAndUser(userId, seri)) {// check cert is belong to user
            System.out.println("cert is not belong to user");
            return false;
        }
        Order order = orderService.getOrderById(orderId);
        String data = order.toStringForHash();
        Hash hashFunc = new Hash("SHA-256");
        String hash = hashFunc.hash(data);
        boolean c = SignInData.verifyDetachedData(hash.getBytes(), sig);
        return c;
    }

    public String getSeriOfCertByCMSSigData(byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException, IOException {
        Security.addProvider(new BouncyCastleProvider());
        CMSSignedData cmsSignedData = new CMSSignedData(sig);
        String seri = cmsSignedData.getSignerInfos().getSigners().iterator().next().getSID().getSerialNumber().toString(16);
//        Collection<X509CertificateHolder> certs = cmsSignedData.getCertificates().getMatches(null);
//        X509CertificateHolder cert = certs.iterator().next();
//        X509Certificate certificate = new JcaX509CertificateConverter().setProvider("BC").getCertificate(cert);
//        FileInputStream fis = new FileInputStream("src/main/java/hcmuaf/edu/vn/BikeEcommerce/atbm/privateInfo/GreenLockPublicKey.key");
//        PublicKey publicKey = KeyGen.getInstance().getPublicKeyformBytes(fis.readAllBytes());
//        boolean b = false;
//        try {
//            certificate.verify(publicKey);
//            b = true;
//        } catch (Exception e) {
//            b = false;
//        }
//        System.out.println(b);
        return seri;
    }


    public static void main(String[] args) throws IOException, GeneralSecurityException, OperatorCreationException, CMSException {
        CheckSig checkSig = new CheckSig();
        String userId = "634726e3-288c-412a-8d14-9a1b961fbd22";
        String orderId = "2401159e9088";
        byte[] sig = new FileInputStream("C:\\Users\\Chan Chan\\Documents\\hai.sig").readAllBytes();
        System.out.println(checkSig.checkSignature(userId, orderId, sig));


    }
}
