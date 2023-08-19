package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

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
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Supplier() {
    }

    public Supplier(String supplierId, String name, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.supplierId = supplierId;
        this.name = name;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
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

    public LocalDateTime getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public LocalDateTime getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(LocalDateTime updatedAt) {
        this.updatedAt = updatedAt;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Supplier supplier = (Supplier) o;
        return Objects.equals(supplierId, supplier.supplierId) && Objects.equals(name, supplier.name) && Objects.equals(createdAt, supplier.createdAt) && Objects.equals(updatedAt, supplier.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(supplierId, name, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "supplierId='" + supplierId + '\'' +
                ", name='" + name + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
