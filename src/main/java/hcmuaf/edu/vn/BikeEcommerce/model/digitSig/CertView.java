package hcmuaf.edu.vn.BikeEcommerce.model.digitSig;

import java.util.Date;

public class CertView {
    String name;
    String seri;
    String startDate;
    String endDate;
    String status;
    String lockAt;

    public CertView(String name, String seri, String startDate, String endDate, String status, String lockAt) {
        this.name = name;
        this.seri = seri;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
        this.lockAt = lockAt;
    }

    public CertView() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSeri() {
        return this.seri;
    }

    public void setSeri(String seri) {
        this.seri = seri;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLockAt() {
        return lockAt;
    }

    public void setLockAt(String lockAt) {
        this.lockAt = lockAt;
    }

    @Override
    public String toString() {
        return "CertView{" +
                "name='" + name + '\'' +
                ", seri='" + seri + '\'' +
                ", startDate='" + startDate + '\'' +
                ", endDate='" + endDate + '\'' +
                ", status='" + status + '\'' +
                ", lockAt='" + lockAt + '\'' +
                '}';
    }
}
