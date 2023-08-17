package hcmuaf.edu.vn.BikeEcommerce.model;

import java.time.LocalDateTime;

    public class Discount {
        private String discountId;
        private String name;
        private String desc;
        private double discountPercent;
        private int active;
        private LocalDateTime startDate;
        private LocalDateTime endDate;
        private String createAt;
        private String updateAt;

        public Discount() {
        }

        public Discount(String discountId, String name, String desc, double discountPercent, int active, LocalDateTime startDate, LocalDateTime endDate) {
            this.discountId = discountId;
            this.name = name;
            this.desc = desc;
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
                    ", desc='" + desc + '\'' +
                    ", discountPercent=" + discountPercent +
                    ", active=" + active +
                    ", startDate=" + startDate +
                    ", endDate=" + endDate +
                    ", createAt='" + createAt + '\'' +
                    ", updateAt='" + updateAt + '\'' +
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

        public String getDesc() {
            return desc;
        }

        public void setDesc(String desc) {
            this.desc = desc;
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

        public String getCreateAt() {
            return createAt;
        }

        public void setCreateAt(String createAt) {
            this.createAt = createAt;
        }

        public String getUpdateAt() {
            return updateAt;
        }

        public void setUpdateAt(String updateAt) {
            this.updateAt = updateAt;
        }
    }
