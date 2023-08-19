package hcmuaf.edu.vn.BikeEcommerce.DAO;

public class ScirptSQL {
    // user
    public static final String getUser = "select * from User";
    public static final String getUserByKey = "select * from User where user_id = :key or email= :key or user_name=:key";
    public static final String insertUser = "insert into User (user_id, email, salt, pass, user_name) " + "values (:getUserId,:getEmail,:getSalt,SHA2(:getPass,256),:getUserName);";
    public static final String updateUser = "update User " + "set email = :getEmail, pass= SHA2(':getPass', 256) " + "where user_id = :getUserId;";
    public static final String deleteUserById = "delete " + "from User " + "where user_id =:id ";
    public static final String loginByUserNameOrEmail = "select * from User where user_name=:keyLogin or email=:keyLogin and pass=SHA2(:pass,256)";

    public static final String getSaltByUserNameOrEmail = "select salt from User where user_name=:key or email=:key";

    public static final String isEmailOrUserNameAlreadyExists = "select :key = user_name or :key = email from user";
    public static final String setAdmin = "update User set role=2 where user_id=:userId";
    public static final String setUser = "update User set role=1 where user_id=:userId";
    // VerifyCode
    public static final String checkVerifyCodeForRegister = "select * from verify_code where code=:verifyCode and email=:email and function = 1 and valid = 1 and now()-create_at<300";
    public static final String checkVerifyCodeForLogin = "select * from verify_code where code=:verifyCode and email=:email and function = 2 and valid = 1 and now()-create_at<300";
    public static final String checkVerifyCodeForResetPassword = "select * from verify_code where code=:verifyCode and email=:email and function = 3 and valid = 1 and now()-create_at<1440";
    public static final String insertVerifyCode = "INSERT INTO verify_code (code, email,function) " + "VALUES (:verifyCode,:email,:function);";
    public static final String disableVerifyCode = "update verify_code set valid=0 where code=:verifyCode and email=:email";

    // Order
    public static final String getAllOrder = "SELECT * FROM `order`";
    public static final String getOrderById = "SELECT * FROM `order` WHERE order_id=:orderId";
    public static final String insertOrder = "INSERT INTO `order` (order_id, user_id, create_at, status, total_price) " + "VALUES (:getOrderId,:getUserId,:getCreatedAt,:getStatus,:getTotalPrice);";
    public static final String updateOrder = "UPDATE `order` " + "SET status = :getStatus, total_price = :getTotalPrice ,discount = :discount, send_day=:sendDay, receive_day=:receiveDay" + "WHERE order_id = :getOrderId;";
    public static final String deleteOrderById = "DELETE FROM `order` WHERE order_id = :orderId";
    public static final String getAllOrderByUserId = "SELECT * FROM `order` WHERE user_id=:userId";
    //OrderItem
    public static final String getProductsByOrderId = "SELECT * FROM order_item WHERE order_id=:orderId";
    public static final String insertOrderItem = "INSERT INTO order_item (order_id, product_id, quantity, price) " + "VALUES (:getOrderId,:getProductId,:getQuantity,:getPrice);";
    public static final String updateOrderItem = "UPDATE order_item " + "SET quantity = :getQuantity, price = :getPrice " + "WHERE order_id = :getOrderId and product_id=:getProductId;";
    public static final String deleteOrderItemById = "DELETE FROM order_item WHERE order_id = :orderId and product_id=:productId";


    // Adress
    public static final String getAllAddress = "select * from address";
    public static final String getAddressByAddressId = "select * from address where address_id=:addressId";
    public static final String getAddressByUserId = "select * from address where user_id=:userId";
    public static final String insertAddress = "insert into address (address_id, user_id, name, phone, address, city, district, ward) " + "values (:getAddressId,:getUserId,:getName,:getPhone,:getAddress,:getCity,:getDistrict,:getWard);";
    public static final String updateAddress = "update address " + "set name = :getName, phone = :getPhone, address = :getAddress, city = :getCity, district = :getDistrict, ward = :getWard " + "where address_id = :getAddressId;";
    public static final String deleteAddressById = "delete " + "from address " + "where address_id =:addressId ";
    //brand
    public static final String getAllBrands = "Select * from Brand";
    public static final String getBrandById = "Select * from Brand where brand_id = :brandId";
    public static final String getBrandsByName = "Select * from Brand where name like concat('%', :name, '%')";
    public static final String insertBrand = "Insert into `Brand`(`brand_id`, `name`, `description`)" +
            " values (:brandId, :name, :description)";
    public static final String updateBrand = "Update `Brand` set `name` = :name, `description` = :description" +
            " where `brand_id` = :brandId";
    public static final String deleteBrand = "Delete from `Brand` where `brand_id` = :brandId";
    //  cart
    static final String getAllCart = "select * from cart";
    static final String getCartByKey = "select * from cart where ss_id = :key or cart_id = :key or user_id = :key";
    static final String insertCart = "insert into cart(cart_id,user_id,ss_id) values(:cart.cartId,:cart.userId,:cart.ssId)";
    static final String updateUserIdForCart = "update cart set user_id = :userId where cart_id = :cartId";
    static final String deleteCart = "delete from cart where cart_id = :cartId";

    //  cartItem
    static final String getAllCartItem = "select * from cart_item";
    static final String getCartItemsByCartId = "select * from cart_item where cart_id = :cartId";
    static final String getCartItemById = "select * from cart_item where cart_item_id = :cartItemId";
    static final String insertCartItem = "insert into cart_item(cart_id,product_id,quantity) values(:cartId,:productId,:quantity)";
    static final String updateCartItem = "update cart_item set quantity = :quantity where cart_id = :cartId and product_id = :productId";
    static final String deleteCartItem = "delete from cart_item where cart_id = :cartId and product_id = :productId";
    // category
    static final String getAllCategory = "Select * from Category";
    static final String getCategoryById = "Select * from Category where category_id = :id";
    static final String getCategoryByName = "Select * from Category where name like = :name";
    static final String insertCategory = "INSERT INTO categories (id, name, description, image, parentId, active, level, shortId) " +
            "VALUES (:id, :name, :description, :image, :parentId, :active, :level, :shortId)";
    static final String updateCategory = "UPDATE categories " +
            "SET name = :name, description = :description, image = :image, parentId = :parentId, " +
            "active = :active, level = :level, shortId = :shortId " +
            "WHERE id = :id";
    static final String deleteCategory = "DELETE FROM categories WHERE id = :id";
    // color
    static final String getAllColor = "select * from color";
    static final String getColorById = "select * from color where color_id = :colorId";
    static final String insertColor = "insert into color(color_name, code) values(:colorName, :code)";
    static final String updateColor = "update color set color_name = :colorName, code = :code where color_id = :colorId";
    static final String deleteColor = "delete from color where color_id = :colorId";
    static final String getColorByProductId = "select * from color where color_id in (select color_id from color_product where product_id = :productId)";
    // Supplier
    static final String getAllSupplier = "Select * from Supplier";
    static final String getSupplierById = "Select * from Supplier where supplier_id = :supplierId";
    static final String getSuppliersByName = "Select * from Supplier where name like = :name";
    static final String insertSupplier = "Insert into `Supplier`(`supplier_id`, `name`,`description`)" +
            " values (:supplierId, :name, :description)";
    static final String updateSupplier = "Update `Supplier` set `name` = :name, `description` = :description where `supplier_id` = :supplierId";
    static final String deleteSupplier = "Delete from `Supplier` where `supplier_id` = :supplierId";
    // product
    static final String getAllProduct = "Select * from Product";
    static final String getProductById = "Select * from Product where product_id = :id";
    static final String getProductsByName = "Select * from Product where name like CONCAT('%', :name, '%')";
    static final String insertProduct = "INSERT INTO product (product_id, name, price, description, wheelSize, material, warranty, inventory, discountId, categoryId, brandId, supplierId, status) " +
            "VALUES (:productId, :name, :price, :description, :wheelSize, :material, :warranty, :inventory, :discountId, :categoryId, :brandId, :supplierId, :status)";
    static final String updateProduct = "UPDATE product " +
            "SET name = :name, price = :price, description = :description, wheelSize = :wheelSize, " +
            "material = :material, warranty = :warranty, inventory = :inventory, " +
            "discountId = :discountId, categoryId = :categoryId, brandId = :brandId, supplierId = :supplierId, status = :status " +
            "WHERE productId = :productId";
    static final String deleteProduct = "DELETE FROM product WHERE productId = :productId";
    //    Slider
    static final String getAllSlider = "select * from image_slider";
    static final String getSliderById = "select * from image_slider where id = :id";
    static final String insertImageSlider = "insert into image_slider(id, link) values(:id, :link)";
    static final String updateImageSlider = "update image_slider set link = :link where id = :id";
    static final String deleteImageSlider = "delete from image_slider where id = :id";
    //    Image product
    static final String getAllImageProduct = "select * from image_product";
    static final String getImageProductById = "select * from image_product where image_product_id = :imageProductId";
    static final String getImageProductByProductId = "select * from image_product where product_id = :productId";
    static final String insertImageProduct = "insert into image_product(image_product_id, link, product_id) values(:imageId, :link, :productId)";
    static final String updateImageProduct = "update image_product set link = :link, product_id = :productId where image_product_id = :imageId";
    static final String deleteImageProduct = "delete from image_product where image_product_id = :imageProductId";
    // discount
    static final String getAllDiscount = "Select * from Discount";
    static final String getDiscountById = "Select * from Discount where discount_id = :discountId";
    static final String getDiscountByName = "Select * from Discount where name like concat('%', :name, '%')";
    static final String insertDiscount = "Insert into `Discount`(`discount_id`, `name`,`description`,`discount_percent`,`start_date`,`end_date`)" +
            " values (:discountId, :name, :description, :discountPercent, :startDate, :endDate)";
    static final String updateDiscount = "Update `Discount` set `name` = :name, `description` = :description, `discount_percent` = :discountPercent, `start_date` = :startDate, `end_date` = :endDate where `discount_id` = :discountId";
    static final String deleteDiscount = "Delete from `Discount` where `discountId` = :discountId";
    // color product
    static final String getAllColorProduct = "select * from color_product";
    static final String getColorProductByProductId = "select * from color_product where product_id = :productId";
    static final String getColorProductByColorId = "select * from color_product where color_id = :colorId";
    static final String insertColorProduct = "insert into color_product(color_id, product_id) values(:colorId, :productId)";
    static final String updateColorProduct = "update color_product set color_id = :colorId, product_id = :productId where color_id = :colorId";
    static final String deleteColorProduct = "delete from color_product where color_id = :colorId and product_id = :productId";


}
