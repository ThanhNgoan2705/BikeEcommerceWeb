package hcmuaf.edu.vn.BikeEcommerce.DAO;

public class ScirptSQL {
    // Adress da test  ok by hoang hai 20-8-23
    public static final String getAllAddress = "select * from address";
    public static final String getAddressByAddressId = "select * from address where address_id=:addressId";
    public static final String getAllAddressByUserId = "select * from address where user_id=:userId";
    public static final String insertAddress = "insert into address (address_id, user_id,  home_address, city, district) " + "values (:getAddressId,:getUserId,:getHomeAddress,:getCity,:getDistrict);";
    public static final String updateAddress = "update address " + "set home_address = :getHomeAddress, city = :getCity, district = :getDistrict " + "where address_id = :getAddressId;";
    public static final String deleteAddressById = "delete " + "from address " + "where address_id =:addressId ";

    //brand da test by hoang hai 20-8-23
    public static final String getAllBrands = "Select * from Brand";
    public static final String getBrandById = "Select * from Brand where brand_id = :brandId";
    public static final String getBrandsByName = "Select * from Brand where name like concat('%', :name, '%')";
    public static final String getBrandByCategoryId = "Select * from Brand where brand_id in (select brand_id from product where category_id = :categoryId)";
    public static final String insertBrand = "Insert into `Brand`(`brand_id`, `name`, `description`)" + " values (:brandId, :name, :description)";
    public static final String updateBrand = "Update `Brand` set `name` = :name, `description` = :description" + " where `brand_id` = :brandId";
    public static final String deleteBrand = "Delete from `Brand` where `brand_id` = :brandId";


    //  cart  da test by hoang hai 20-8-23
    static final String getAllCart = "select * from cart";
    static final String getCartByKey = "select * from cart where ss_id = :key or cart_id = :key or user_id = :key";
    static final String insertCart = "insert into cart(cart_id,user_id,ss_id) values(:cartId,:userId,:ssId)";
    static final String updateUserIdForCart = "update cart set user_id = :userId where cart_id = :cartId";
    static final String deleteCart = "delete from cart where cart_id = :cartId";


    //  cartItem da test and fix by hoang hai 20-8-23
    static final String getAllCartItem = "select * from cart_item";
    static final String getCartItemsByCartId = "select * from cart_item where cart_id = :cartId";
    static final String getCartItemById = "select * from cart_item where cart_item_id = :cartItemId";
    static final String insertCartItem = "insert into cart_item(cart_item_id,cart_id,product_id,quantity) values(:cartItemId,:cartId,:productId,:quantity)";
    static final String updateCartItem = "update cart_item set quantity = :quantity where cart_id = :cartId and product_id = :productId";
    static final String deleteCartItem = "delete from cart_item where cart_item_id = :cartItemId ";
    static final String deleteCartItemByCartId = "delete from cart_item where cart_id = :cartId";
    // category da test by hoang hai 20-8-23
    static final String getAllCategory = "Select * from Category";
    static final String getCategoryById = "Select * from Category where category_id = :categoryId";
    static final String getCategoryByName = "Select * from Category where name like = concat('%', :name, '%')";
    static final String insertCategory = "INSERT INTO category (category_id, name, description, image, parent_id, active, level, short_id) " + "VALUES (:categoryId, :name, :description, :image, :parentId, :active, :level, :shortId)";
    static final String updateCategory = "UPDATE category " + "SET name = :name, description = :description, image = :image, parent_id = :parentId, " + "active = :active, level = :level, short_id = :shortId " + "WHERE category_id = :categoryId";
    static final String deleteCategory = "DELETE FROM category WHERE category_id = :categoryId";
    // color da test by hoang hai 20-8-23
    static final String getAllColor = "select * from color";
    static final String getColorById = "select * from color where color_id = :colorId";
    static final String insertColor = "insert into color(color_id,name, code) values(:colorId,:name, :code)";
    static final String updateColor = "update color set name = :name, code = :code where color_id = :colorId";
    static final String deleteColor = "delete from color where color_id = :colorId";
    static final String getColorByProductId = "select * from color where color_id in (select color_id from color_product where product_id = :productId)";

    // color product da test by hoang hai 20-8-23
    static final String getAllColorProduct = "select * from color_product";
    static final String getColorProductByProductId = "select * from color_product where product_id = :productId";
    static final String getColorProductByColorId = "select * from color_product where color_id = :colorId";
    static final String insertColorProduct = "insert into color_product(color_id, product_id) values(:colorId, :productId)";
    static final String updateColorProduct = "update color_product set color_id = :colorId, product_id = :productId where color_id = :colorId";
    static final String deleteColorProduct = "delete from color_product where color_id = :colorId and product_id = :productId";
    public static final String deleteColorProductByProductId = "delete from color_product where product_id = :productId";
    public static final String deleteColorProductByColorId = "delete from color_product where color_id = :colorId";
    //cmt da test va fix by Hoang hai 20-8-23
    public static final String getAllComment = "select * from comment";
    public static final String getCmtById = "select * from comment where comment_id = :commentId";
    public static final String getCmtByUserId = "select * from comment where user_id = :userId";
    public static final String getCmtByProductId = "select * from comment where product_id = :productId";
    public static final String insertCmt = "insert into comment(comment_id, product_id, user_id, content) values(:commentId, :productId, :userId, :content)";
    public static final String updateCmt = "update comment set product_id = :productId, user_id = :userId, content = :content where comment_id = :commentId";
    public static final String deleteCmt = "delete from comment where comment_id = :commentId";
    // discount da test va fix by Hoang Hai 20-8-23
    static final String getAllDiscount = "Select * from discount";
    static final String getDiscountById = "Select * from discount where discount_id = :discountId";
    static final String getDiscountByName = "Select * from discount where name like concat('%', :name, '%')";
    static final String insertDiscount = "Insert into `discount`(`discount_id`, `name`,`description`,`discount_percent`,active,`start_date`,`end_date`)" + " values (:discountId, :name, :description, :discountPercent,active, :startDate, :endDate)";
    static final String updateDiscount = "Update `discount` set `name` = :name, `description` = :description, `discount_percent` = :discountPercent,active= :active, `start_date` = :startDate, `end_date` = :endDate where `discount_id` = :discountId";
    static final String deleteDiscount = "Delete from `discount` where `discount_id` = :discountId";
    // favorite da test by hoang hai 20-8-23
    public static final String getAllFavoriteByUserId = "select * from favorite where user_id = :userId";
    public static final String getAllFavoriteByProductId = "select * from favorite where product_id = :productId";
    public static final String getFavoriteById = "select * from favorite where favorite_id = :favoriteId";
    public static final String insertFavorite = "insert into favorite(favorite_id, user_id, product_id) values(:favoriteId, :userId, :productId)";
    public static final String updateFavorite = "update favorite set user_id = :userId, product_id = :productId where favorite_id = :favoriteId";
    public static final String deleteFavorite = "delete from favorite where favorite_id = :favoriteId";
    public static final String getAllFavorite = "select * from favorite";
    public static final String deleteFavoriteByProductIdAndUserId = "delete from favorite where product_id = :productId and user_id = :userId";

    //    Image product da test va fix by Hoang Hai 21-8-23
    static final String getAllImageProduct = "select * from image_product";
    static final String getImageProductById = "select * from image_product where image_product_id = :imageProductId";
    static final String getImageProductByProductId = "select * from image_product where product_id = :productId";
    static final String insertImageProduct = "insert into image_product(image_product_id, link, product_id) values(:imageProductId, :link, :productId)";
    static final String updateImageProduct = "update image_product set link = :link, product_id = :productId where image_product_id = :imageProductId";
    static final String deleteImageProduct = "delete from image_product where image_product_id = :imageProductId";
    public static final String deleteImageProductByProductId = "delete from image_product where product_id = :productId";


    // user
    public static final String getUser = "select * from User";
    public static final String getUserByKey = "select * from User where user_id = :key or email= :key or user_name=:key";
    public static final String insertUser = "insert into User (user_id, email, salt, pass, user_name, role) " + "values (:getUserId,:getEmail,:getSalt,SHA2(:getPass,256),:getUserName,:getRole);";
    public static final String updateUser = "update User " + "set email = :getEmail " + "where user_id = :getUserId;";
    public static final String updateUserPassword = "update User " + "set pass = SHA2(:getPass,256) " + "where user_id = :getUserId;";
    public static final String deleteUserById = "delete " + "from User " + "where user_id =:id ";
    public static final String loginByUserNameOrEmail = "select * from User where user_name=:keyLogin or email=:keyLogin and pass=SHA2(:pass,256)";
    public static final String updateUserRoll = "update User set role=:role where email=:email";
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


    // Supplier da test va fix by Hoang Hai 21-8-23
    static final String getAllSupplier = "Select * from Supplier";
    static final String getSupplierById = "Select * from Supplier where supplier_id = :supplierId";
    static final String getSuppliersByName = "Select * from Supplier where name like = :name";
    static final String insertSupplier = "Insert into `Supplier`(`supplier_id`, `name`)" + " values (:supplierId, :name)";
    static final String updateSupplier = "Update `Supplier` set `name` = :name where `supplier_id` = :supplierId";
    static final String deleteSupplier = "Delete from `Supplier` where `supplier_id` = :supplierId";
    // product
    // update 14/9/2023 -- update 24/9/2023
    static final String getAllProduct = "Select * from Product";
    static final String getProductById = "Select * from Product where product_id = :id";
    static final String getProductsByName = "Select * from Product where name like CONCAT('%', :name, '%')";
    static final String getProductByCategoryId = "Select * from Product where category_id = :categoryId";
    static final String getProductByBrandId = "Select * from Product where brand_id = :brandId";
    static final String getProductBySupplierId = "Select * from Product where supplier_id = :supplierId";
    static final String getProductByDiscount = "Select * from Product where discount_id is not null";
    static final String getProductByStatus = "Select * from Product where status = :status";
    static final String insertProduct = "INSERT INTO product (product_id, name, price, description, wheelSize, material, warranty, inventory, discount_id, category_id, brand_id, supplier_id, status) " + "VALUES (:productId, :name, :price, :description, :wheelSize, :material, :warranty, :inventory, :discountId, :categoryId, :brandId, :supplierId, :status)";
    static final String updateProduct = "UPDATE product " + "SET name = :name, price = :price, description = :description, wheelSize = :wheelSize, " + "material = :material, warranty = :warranty, inventory = :inventory, " + "discount_id = :discountId, category_id = :categoryId, brand_id = :brandId, supplier_id = :supplierId, status = :status " + "WHERE productId = :productId";
    static final String deleteProduct = "DELETE FROM product WHERE product_id = :productId";
    static final String getProductByPrice = "Select * from Product where price between :minPrice and :maxPrice";
    static final String getProductByWheelSize = "Select * from Product where wheelSize = :wheelSize";
    //    Slider  da test va fix by Hoang Hai 21-8-23
    static final String getAllSlider = "select * from image_slider";
    static final String getSliderById = "select * from image_slider where id = :id";
    static final String insertImageSlider = "insert into image_slider(id, link) values(:id, :link)";
    static final String updateImageSlider = "update image_slider set link = :link where id = :id";
    static final String deleteImageSlider = "delete from image_slider where id = :id";
    // verify code
    public static final String GET_VERIFY_CODE = "SELECT * FROM verify_code WHERE email = :email AND code = :code";

    public static final String INSERT_VERIFY_CODE = "INSERT INTO verify_code (email, code, function) VALUES (:email, :code, :function)";
    public static final String UPDATE_VERIFY_CODE = "UPDATE verify_code SET valid = 0 WHERE email = :email AND function = :code";

}
