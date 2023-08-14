package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class ImageSlider {
    private String id;
    private String link;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public ImageSlider() {
    }

    public ImageSlider(String id, String link, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.link = link;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
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
        ImageSlider that = (ImageSlider) o;
        return Objects.equals(id, that.id) && Objects.equals(link, that.link) && Objects.equals(createdAt, that.createdAt) && Objects.equals(updatedAt, that.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, link, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "ImageSlider{" +
                "id='" + id + '\'' +
                ", link='" + link + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }
}
