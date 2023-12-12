package hcmuaf.edu.vn.BikeEcommerce.model.digitSig;

public class RevocationCert {
    String seri;
    Long revokedAt;
    String createdAt;
    String updatedAt;

    public RevocationCert(String seri, Long revokedAt) {
        this.seri = seri;
        this.revokedAt = revokedAt;
    }

    public RevocationCert() {
    }

    @Override
    public String toString() {
        return "RevocationCert{" +
                "seri='" + seri + '\'' +
                ", revokedAt=" + revokedAt +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getSeri() {
        return seri;
    }

    public void setSeri(String seri) {
        this.seri = seri;
    }

    public Long getRevokedAt() {
        return revokedAt;
    }

    public void setRevokedAt(Long revokedAt) {
        this.revokedAt = revokedAt;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(String createdAt) {
        this.createdAt = createdAt;
    }

    public String getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(String updatedAt) {
        this.updatedAt = updatedAt;
    }
}
