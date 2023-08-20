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
 * @Author Hoang Hai
 * @version 1.0
 */
public class Category {
    private String categoryId;
    private String name;
    private String description;
    private String image;
    private String parentId;
    private int active;
    private int level;
    private String shortId;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Category() {
    }


    public Category(String categoryId, String name, String description, String image, String parentId, int active, int level, String shortId) {

        this.categoryId = categoryId;
        this.name = name;
        this.description = description;
        this.image = image;
        this.parentId = parentId;
        this.active = active;
        this.level = level;
        this.shortId = shortId;
    }

    public Category(String categoryId, String name, int active) {
        this.categoryId = categoryId;
        this.name = name;
        this.active = active;
    }

    @Override
    public String toString() {
        return "Category{" +
                "categoryId='" + categoryId + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", parentId='" + parentId + '\'' +
                ", active=" + active +
                ", level=" + level +
                ", shortId='" + shortId + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
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

    public String getShortId() {
        return shortId;
    }

    public void setShortId(String shortId) {
        this.shortId = shortId;

    }

    public String getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(String categoryId) {
        this.categoryId = categoryId;
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

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    public int getActive() {
        return active;
    }

    public void setActive(int active) {
        this.active = active;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Category category = (Category) o;
        return active == category.active && level == category.level && Objects.equals(categoryId, category.categoryId) && Objects.equals(name, category.name) && Objects.equals(description, category.description) && Objects.equals(image, category.image) && Objects.equals(parentId, category.parentId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(categoryId, name, description, image, parentId, active, level);
    }


}
