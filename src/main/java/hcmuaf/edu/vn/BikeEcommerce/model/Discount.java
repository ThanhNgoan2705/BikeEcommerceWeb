package hcmuaf.edu.vn.BikeEcommerce.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of discount <br/>
 * This class is used to map with discount table in database <br/>
 * One discount have many products <br/>
 * One product have one discount <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Product
 */
public class Discount {
    // dinh dang ngay thang nam
//    DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    private String discountId;
    private String name;//not null
    private String description;
    private double discountPercent;//not null
    private int active; //defause 1
    private String startDate;//not null
    private String endDate;//not null
    @ColumnName("create_at")
    private String createdAt;
    @ColumnName("update_at")
    private String updatedAt;

    public Discount() {
    }

    public Discount(String discountId, String name, String description, double discountPercent, int active, String startDate, String endDate) {
        this.discountId = discountId;
        this.name = name;
        this.description = description;
        this.discountPercent = discountPercent;
        this.active = active;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public Discount(String discountId, String name, double discountPercent, int active) {
        this.discountId = discountId;
        this.name = name;
        this.discountPercent = discountPercent;
        this.active = active;
    }

    @Override
    public String toString() {
        return "Discount{" +
                "discountId='" + discountId + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", discountPercent=" + discountPercent +
                ", active=" + active +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", createdAt='" + createdAt + '\'' +
                ", updatedAt='" + updatedAt + '\'' +
                '}';
    }

    public String getDiscountId() {
        return discountId;
    }

    public void setDiscountId(String discountId) {
        this.discountId = discountId;
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

    public double getDiscountPercent() {
        return discountPercent;
    }

    public void setDiscountPercent(double discountPercent) {
        this.discountPercent = discountPercent;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
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

    public static void main(String[] args) {
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("d/M/yyyy");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        LocalDate localDate = LocalDate.parse("01/10/2023",formatter);
        System.out.println(localDate.format(formatter));
    }
}
