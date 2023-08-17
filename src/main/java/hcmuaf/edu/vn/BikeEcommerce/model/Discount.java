package hcmuaf.edu.vn.BikeEcommerce.model;

import org.jdbi.v3.core.mapper.reflect.ColumnName;

import java.time.LocalDateTime;

    public class Discount {
        private String discountId;
        private String name;
        private String description;
        private double discountPercent;
        private int active;
        private LocalDateTime startDate;
        private LocalDateTime endDate;
        @ColumnName("create_at")
        private String createdAt;
        @ColumnName("update_at")
        private String updatedAt;

        public Discount() {
        }

        public Discount(String discountId, String name, String description, double discountPercent, int active, LocalDateTime startDate, LocalDateTime endDate) {
            this.discountId = discountId;
            this.name = name;
            this.description = description;
            this.discountPercent = discountPercent;
            this.active = active;
            this.startDate = startDate;
            this.endDate = endDate;
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

        public LocalDateTime getStartDate() {
            return startDate;
        }

        public void setStartDate(LocalDateTime startDate) {
            this.startDate = startDate;
        }

        public LocalDateTime getEndDate() {
            return endDate;
        }

        public void setEndDate(LocalDateTime endDate) {
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
    }
