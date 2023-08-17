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

    public Address(String addressId, String homeAddress, String district, String city) {
        this.addressId = addressId;
        this.homeAddress = homeAddress;
        this.district = district;
        this.city = city;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId='" + addressId + '\'' +
                ", homeAddress='" + homeAddress + '\'' +
                ", district='" + district + '\'' +
                ", city='" + city + '\'' +
                ", create_at='" + createdAt + '\'' +
                ", update_at='" + updatedAt + '\'' +
                '}';
    }

    public String getAddressId() {
        return addressId;
    }

    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    public String getCreate_at() {
        return createdAt;
    }

    public void setCreate_at(String create_at) {
        this.createdAt = create_at;
    }

    public String getUpdate_at() {
        return updatedAt;
    }

    public void setUpdate_at(String update_at) {
        this.updatedAt = update_at;
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
}
