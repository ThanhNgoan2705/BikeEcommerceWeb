package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class Supplier {
    private String supplierId;
    private String name;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Supplier() {
    }

    public Supplier(String supplierId, String name, LocalDateTime createAt, LocalDateTime updateAt) {
        this.supplierId = supplierId;
        this.name = name;
        this.createAt = createAt;
        this.updateAt = updateAt;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Supplier supplier = (Supplier) o;
        return Objects.equals(supplierId, supplier.supplierId) && Objects.equals(name, supplier.name) && Objects.equals(createAt, supplier.createAt) && Objects.equals(updateAt, supplier.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(supplierId, name, createAt, updateAt);
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
}
