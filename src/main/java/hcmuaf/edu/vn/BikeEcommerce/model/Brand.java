package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of brand <br/>
 * This class is used to map with brand table in database <br/>
 * One brand have many products <br/>
 * One product have one brand <br/>
 * @see Product
 * @author Hoang Hai
 * @version 1.0
 */
public class Brand {
    private String brandId;
    private String name;
    private String description;
    private String logo;
    private String address;
    private String phone;
    private String email;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Brand() {
    }

    public Brand(String brandId, String name, String description, String logo, String address, String phone, String email, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.brandId = brandId;
        this.name = name;
        this.description = description;
        this.logo = logo;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public String getBrandId() {
        return brandId;
    }

    public void setBrandId(String brandId) {
        this.brandId = brandId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
        Brand brand = (Brand) o;
        return Objects.equals(brandId, brand.brandId) && Objects.equals(name, brand.name) && Objects.equals(description, brand.description) && Objects.equals(logo, brand.logo) && Objects.equals(address, brand.address) && Objects.equals(phone, brand.phone) && Objects.equals(email, brand.email) && Objects.equals(createdAt, brand.createdAt) && Objects.equals(updatedAt, brand.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(brandId, name, description, logo, address, phone, email, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "Brand{" +
                "brandId='" + brandId + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", logo='" + logo + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
