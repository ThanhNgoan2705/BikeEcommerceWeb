package hcmuaf.edu.vn.BikeEcommerce.model.digitSig;

import vn.edu.atbmmodel.key.KeyGen;

import java.security.PublicKey;
import java.security.cert.Certificate;
import java.util.Base64;

public class Cert {
    String seri;
    String certValue;
    String publicKey;
    Certificate certificate;
    PublicKey Key;
    String createdAt;

    public Cert(String seri, String certValue, String publicKey) {
        this.seri = seri;
        this.certValue = certValue;
        this.publicKey = publicKey;
    }

    public Cert() {
    }

    @Override
    public String toString() {
        return "Cert{" +
                "seri='" + seri + '\'' +
                ", certValue='" + certValue + '\'' +
                ", publicKey='" + publicKey + '\'' +
                ", createdAt='" + createdAt + '\'' +
                '}';
    }

    public String getSeri() {
        return seri;
    }

    public void setSeri(String seri) {
        this.seri = seri;
    }

    public String getCertValue() {
        return certValue;
    }

    public void setCertValue(String certValue) {
        this.certValue = certValue;
    }

    public String getPublicKey() {
        return publicKey;
    }

    public void setPublicKey(String publicKey) {
        this.publicKey = publicKey;
    }

    public Certificate getCertificate() {
        byte[] certBytes = Base64.getDecoder().decode(certValue);
        certificate = KeyGen.getInstance().getCertificateFormBytes(certBytes);
        return certificate;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }

    public PublicKey getKey() {
        byte[] keyBytes = Base64.getDecoder().decode(publicKey);
        Key = KeyGen.getInstance().getPublicKeyformBytes(keyBytes);
        return Key;
    }

    public void setKey(PublicKey key) {
        Key = key;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }
}