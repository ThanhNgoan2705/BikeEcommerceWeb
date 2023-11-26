package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of color <br/>
 * This class is used to map with color table in database <br/>
 * One color have many products <br/>
 * One product have many colors <br/>
 * @see Product
 * @see SubProduct_color
 * @Author Hoang Hai
 */
public class Color {
    private String colorId;
    private String name;
    private String code;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Color() {
    }

    public Color(String colorId, String name, String code) {
        this.colorId = colorId;
        this.name = name;
        this.code = code;
    }

    @Override
    public String toString() {
        return "Color{" +
                "colorId='" + colorId + '\'' +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
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
}
