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
    private String id;
    private String name;
    private String description;
    private String image;
    private String parentId;
    private int active;
    private int level;

    public Category() {
    }

    public Category(String id, String name, String description, String image, String parentId, int active, int level) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.image = image;
        this.parentId = parentId;
        this.active = active;
        this.level = level;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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
        return active == category.active && level == category.level && Objects.equals(id, category.id) && Objects.equals(name, category.name) && Objects.equals(description, category.description) && Objects.equals(image, category.image) && Objects.equals(parentId, category.parentId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, description, image, parentId, active, level);
    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", image='" + image + '\'' +
                ", parentId='" + parentId + '\'' +
                ", active=" + active +
                ", level=" + level +
                '}';
    }

}
