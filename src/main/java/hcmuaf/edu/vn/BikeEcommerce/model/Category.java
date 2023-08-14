package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class Category {
    private String id;
    private String name;
    private String desc;
    private String image;
    private String parentId;
    private int active;
    private int level;
    private LocalDateTime createAt;
    private LocalDateTime updateAt;

    public Category() {
    }

    public Category(String id, String name, String desc, String image, String parentId, int active, int level, LocalDateTime createAt, LocalDateTime updateAt) {
        this.id = id;
        this.name = name;
        this.desc = desc;
        this.image = image;
        this.parentId = parentId;
        this.active = active;
        this.level = level;
        this.createAt = createAt;
        this.updateAt = updateAt;
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

    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
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
        Category category = (Category) o;
        return active == category.active && level == category.level && Objects.equals(id, category.id) && Objects.equals(name, category.name) && Objects.equals(desc, category.desc) && Objects.equals(image, category.image) && Objects.equals(parentId, category.parentId) && Objects.equals(createAt, category.createAt) && Objects.equals(updateAt, category.updateAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, desc, image, parentId, active, level, createAt, updateAt);
    }

    @Override
    public String toString() {
        return "Category{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", desc='" + desc + '\'' +
                ", image='" + image + '\'' +
                ", parentId='" + parentId + '\'' +
                ", active=" + active +
                ", level=" + level +
                ", createAt=" + createAt +
                ", updateAt=" + updateAt +
                '}';
    }
}
