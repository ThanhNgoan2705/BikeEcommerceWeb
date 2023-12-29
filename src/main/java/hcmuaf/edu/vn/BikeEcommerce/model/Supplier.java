package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of supplier <br/>
 * This class is used to map with supplier table in database <br/>
 * One supplier have many products <br/>
 * One product have one supplier <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Product
 */

public class Supplier {
    private String supplierId;
    private String name;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Supplier() {
    }

    public Supplier(String supplierId, String name) {
        this.supplierId = supplierId;
        this.name = name;
    }

    public Supplier(String supplierId, String name, LocalDateTime createAt, LocalDateTime updateAt) {
        this.supplierId = supplierId;
        this.name = name;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "supplierId='" + supplierId + '\'' +
                ", name='" + name + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    public String getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(String supplierId) {
        this.supplierId = supplierId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public LocalDateTime getCreateAt() {
        return createAt;
    }

    public void setCreateAt(LocalDateTime createAt) {
        this.createAt = createAt;
    }

    public LocalDateTime getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(LocalDateTime updateAt) {
        this.updateAt = updateAt;
    }
}
