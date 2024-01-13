package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.atbm.KeyGen;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.CMSSignedData;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.OperatorCreationException;
import hcmuaf.edu.vn.BikeEcommerce.atbm.SignInData;
import hcmuaf.edu.vn.BikeEcommerce.atbm.Hash;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Collection;
import java.util.Objects;

public class CheckSig {

    OrderService orderService = OrderService.getInstance();

    public CheckSig() {
    }

    public boolean checkSignature(String orderId, byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException {
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
        String seri = cmsSignedData.getSignerInfos().getSigners().iterator().next().getSID().getSerialNumber().toString();
        Collection<X509CertificateHolder> certs = cmsSignedData.getCertificates().getMatches(null);
        X509CertificateHolder cert = certs.iterator().next();
        X509Certificate certificate = new JcaX509CertificateConverter().setProvider("BC").getCertificate(cert);
        FileInputStream fis = new FileInputStream("src/main/java/hcmuaf/edu/vn/BikeEcommerce/atbm/privateInfo/GreenLockPublicKey.key");
        PublicKey publicKey = KeyGen.getInstance().getPublicKeyformBytes(fis.readAllBytes());
        boolean b = false;
        try {
            certificate.verify(publicKey);
            b = true;
        } catch (Exception e) {
            b = false;
        }
        System.out.println(b);
        return seri;
    }

    public static void main(String[] args) throws IOException, GeneralSecurityException, OperatorCreationException, CMSException {
        CheckSig checkSig = new CheckSig();
        byte[] sig = new FileInputStream("C:\\Users\\hoang hai\\Desktop\\testthuthoima.sig").readAllBytes();

        System.out.println(checkSig.getSeriOfCertByCMSSigData(sig));
    }
}
