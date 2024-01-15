package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.atbm.Hash;
import hcmuaf.edu.vn.BikeEcommerce.atbm.KeyGen;
import hcmuaf.edu.vn.BikeEcommerce.atbm.SignInData;
import hcmuaf.edu.vn.BikeEcommerce.model.Address;
import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.model.digitSig.RevocationCert;
import hcmuaf.edu.vn.BikeEcommerce.service.AddressService;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.cms.AttributeTable;
import org.bouncycastle.cert.X509CertificateHolder;
import org.bouncycastle.cert.jcajce.JcaX509CertificateConverter;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.CMSSignedData;
import org.bouncycastle.cms.SignerInformation;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.bouncycastle.operator.OperatorCreationException;

import java.io.FileInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PublicKey;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Base64;
import java.util.Collection;
import java.util.Date;

public class CheckSig {

    OrderService orderService = OrderService.getInstance();
    UserSeriService userSeriService = UserSeriService.getInstance();
    RevocationCertService revocationCertService = RevocationCertService.getInstance();

    public CheckSig() {
    }

    public boolean checkSignature(String userId, String orderId, byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException, IOException {
        String seri = getSeriOfCertByCMSSigData(sig);
        Order order = orderService.getOrderById(orderId);
        System.out.println("seri: " + seri);
        RevocationCert revocationCert = revocationCertService.getBySeri(seri);
        if (revocationCert != null) {// check cert is revoked
            Long revokedAt = revocationCert.getRevokedAt();
            long signAtTimeLong =0;
            String signAt = order.getCreatedAt();
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            try {
                Date date = dateFormat.parse(signAt);
                signAtTimeLong = date.getTime();
            } catch (ParseException e) {
                throw new RuntimeException(e);
            }
            Date revokedAtDate = new Date(revokedAt);
            Date signAtTimeLongDate = new Date(signAtTimeLong);
            if (signAtTimeLongDate.after(revokedAtDate)) {
                System.out.println("cert is revoked");
                return false;
            }
            System.out.println("cert is revoked");
            return false;
        }
        if (!userSeriService.checkSeriAndUser(userId, seri)) {// check cert is belong to user
            System.out.println("cert is not belong to user");
            return false;
        }

        System.out.println("order: " + order);
        String data = order.toStringForHash();
        System.out.println("data: " + data);
        Hash hashFunc = new Hash("SHA-256");
        String hash = hashFunc.hash(data);
        System.out.println("hash: " + hash);
        boolean c = SignInData.verifyDetachedData(hash.getBytes(), sig);
        return c;
    }

    public String getSeriOfCertByCMSSigData(byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException, IOException {
        Security.addProvider(new BouncyCastleProvider());
        CMSSignedData cmsSignedData = new CMSSignedData(sig);
        String seri = cmsSignedData.getSignerInfos().getSigners().iterator().next().getSID().getSerialNumber().toString(16);
        SignerInformation signerInformation = cmsSignedData.getSignerInfos().getSigners().iterator().next();

//        AttributeTable attributeTable = signerInformation.getSignedAttributes();
//        ASN1Encodable attribute = attributeTable.get(CMSAttributes.signingTime);


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
//        CheckSig checkSig = new CheckSig();
//        String userId = "634726e3-288c-412a-8d14-9a1b961fbd22";
//        String orderId = "240115b668d4";
//        Order order = OrderService.getInstance().getOrderById(orderId);
//        String data = order.toStringForHash();
//        Hash hashFunc = new Hash("SHA-256");
//        String hash = hashFunc.hash(data);
//        System.out.println("hash: " + hash);
//        byte[] sig = new FileInputStream("C:\\Users\\Chan Chan\\Documents\\hai1.sig").readAllBytes();
//        System.out.println(SignInData.verifyDetachedData(hash.getBytes(), sig));
//        System.out.println(checkSig.checkSignature(userId, orderId, sig));
        String dateString = "2024-01-15 10:58:09";
        String datee = "2024-01-14";
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        SimpleDateFormat dateFormat2 = new SimpleDateFormat("yyyy-MM-dd");
        try {
            // Phân tích chuỗi thành đối tượng Date
            Date date = dateFormat.parse(dateString);

            // Lấy giá trị thời gian dưới dạng long
            long timestamp = date.getTime();

            System.out.println("Giá trị thời gian dưới dạng long: " + timestamp);
            Date date1 = dateFormat2.parse(datee);
            long timestamp1 = date1.getTime();

            System.out.println("Giá trị thời gian dưới dạng long: " + timestamp1);
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }


}
