package hcmuaf.edu.vn.BikeEcommerce.model;

public class Address {
    private String addressId;
    private String homeAddress;
    private String district;
    private String city;
    private String createdAt;
    private String updatedAt;

    public Address() {
    }

    public Address(String addressId, String homeAddress, String district, String city, String createdAt, String updatedAt) {
        this.addressId = addressId;
        this.homeAddress = homeAddress;
        this.district = district;
        this.city = city;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId='" + addressId + '\'' +
                ", homeAddress='" + homeAddress + '\'' +
                ", district='" + district + '\'' +
                ", city='" + city + '\'' +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
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
