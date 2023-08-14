package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;
import java.util.Objects;

public class Colour {
    private int id;
    private String name;
    private String code;
    private LocalDateTime createdAt;
    private LocalDateTime updatedAt;

    public Colour() {
    }
    public Colour(int id, String name, String code, LocalDateTime createdAt, LocalDateTime updatedAt) {
        this.id = id;
        this.name = name;
        this.code = code;
        this.createdAt = createdAt;
        this.updatedAt = updatedAt;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Colour colour = (Colour) o;
        return id == colour.id && Objects.equals(name, colour.name) && Objects.equals(code, colour.code) && Objects.equals(createdAt, colour.createdAt) && Objects.equals(updatedAt, colour.updatedAt);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, code, createdAt, updatedAt);
    }

    @Override
    public String toString() {
        return "Colour{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", code='" + code + '\'' +
                ", createdAt=" + createdAt +
                ", updatedAt=" + updatedAt +
                '}';
    }

}
