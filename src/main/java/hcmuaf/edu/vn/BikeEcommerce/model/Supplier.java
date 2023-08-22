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
    private String upplierId;
    private String name;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Supplier() {
    }

    public Supplier(String upplierId, String name) {
        this.upplierId = upplierId;
        this.name = name;
    }

    public Supplier(String upplierId, String name, LocalDateTime createAt, LocalDateTime updateAt) {
        this.upplierId = upplierId;
        this.name = name;
        this.createAt = createAt;
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Supplier{" +
                "upplierId='" + upplierId + '\'' +
                ", name='" + name + '\'' +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }

    public String getUpplierId() {
        return upplierId;
    }

    public void setUpplierId(String upplierId) {
        this.upplierId = upplierId;
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
