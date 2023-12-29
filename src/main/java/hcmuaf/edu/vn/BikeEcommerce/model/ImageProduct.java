package hcmuaf.edu.vn.BikeEcommerce.model;

/**
 * Created by Admin on 19-8-23.<br/>
 * This class is used to store information of image product <br/>
 * This class is used to map with image_product table in database <br/>
 * One image product have one product <br/>
 * One product have many image products <br/>
 *
 * @version 1.0
 * @Author Hoang Hai
 * @see Product
 */
public class ImageProduct {
    private String imageProductId;
    private String link;
    private String productId;
    private String colorId;
    private String createAt;
    private String updateAt;

    public ImageProduct() {
    }

    public ImageProduct(String imageProductId, String link, String productId, String colorId) {
        this.imageProductId = imageProductId;
        this.link = link;
        this.productId = productId;
        this.colorId = colorId;
    }

    @Override
    public String toString() {
        return "ImageProduct{" +
                "imageProductId='" + imageProductId + '\'' +
                ", link='" + link + '\'' +
                ", productId='" + productId + '\'' +
                ", colorId='" + colorId + '\'' +
                ", createAt='" + createAt + '\'' +
                ", updateAt='" + updateAt + '\'' +
                '}';
    }

    public String getImageProductId() {
        return imageProductId;
    }

    public void setImageProductId(String imageProductId) {
        this.imageProductId = imageProductId;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getColorId() {
        return colorId;
    }

    public void setColorId(String colorId) {
        this.colorId = colorId;
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
