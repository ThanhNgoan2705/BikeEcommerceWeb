package hcmuaf.edu.vn.BikeEcommerce.service.digitSig;

import hcmuaf.edu.vn.BikeEcommerce.model.Order;
import hcmuaf.edu.vn.BikeEcommerce.service.OrderService;
import org.bouncycastle.cms.CMSException;
import org.bouncycastle.cms.CMSSignedData;
import org.bouncycastle.operator.OperatorCreationException;
import vn.edu.atbmmodel.digitalsignature.SignInData;
import vn.edu.atbmmodel.hash.Hash;

import java.io.FileInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;

public class CheckSig {

    OrderService orderService = OrderService.getInstance();

    public CheckSig() {
    }

    public boolean checkSignature(String orderId, byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException {
        Order order = orderService.getOrderById(orderId);
        String data = order.toStringForHash();
        Hash hashFunc = new Hash("SHA-256");
        String hash = hashFunc.hash(data);
        boolean c = SignInData.verifyDetachedData(hash.getBytes(),sig);
        return c;
    }
    public String getSeriOfCertByCMSSigData(byte[] sig) throws GeneralSecurityException, OperatorCreationException, CMSException {
        CMSSignedData cmsSignedData = new CMSSignedData(sig);
        String seri = cmsSignedData.getSignerInfos().getSigners().iterator().next().getSID().getSerialNumber().toString();
        return seri;
    }

    public static void main(String[] args) throws IOException, GeneralSecurityException, OperatorCreationException, CMSException {
        CheckSig checkSig = new CheckSig();
        byte[] sig = new FileInputStream("C:\\Users\\H\\Documents\\k.sig").readAllBytes();

        System.out.println( checkSig.getSeriOfCertByCMSSigData(sig));
    }
}
