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
    public static final String getCartItemByCartItemId = "select * from cart_item where cart_item_id = :cartItemId";
    static final String getCartItemByCartIdAndProductId = "select * from cart_item where cart_id = :cartId and product_id = :productId";
    static final String insertCartItem = "insert into cart_item(cart_item_id, cart_id, product_id, quantity, color_id) values(:cartItemId, :cartId, :productId, :quantity, :colorId)";
    static final String updateCartItem = "update cart_item set quantity = :quantity ,color_id = :colorId where cart_item_id = :cartItemId";
    static final String deleteCartItem = "delete from cart_item where cart_item_id = :cartItemId ";
    static final String deleteCartItemByCartId = "delete from cart_item where cart_id = :cartId";
    // category da test by hoang hai 20-8-23
    static final String getAllCategory = "Select * from Category";
    static final String getCategoryById = "Select * from Category where category_id = :categoryId";
    static final String getCategoryByName = "Select * from Category where name like concat('%', :name, '%')";
    static final String insertCategory = "INSERT INTO category (category_id, name, description, image, parent_id, active, level, short_id) " + "VALUES (:categoryId, :name, :description, :image, :parentId, :active, :level, :shortId)";
    static final String updateCategory = "UPDATE category " + "SET name = :name, description = :description, image = :image, parent_id = :parentId, " + "active = :active, level = :level, short_id = :shortId " + "WHERE category_id = :categoryId";
    static final String deleteCategory = "DELETE FROM category WHERE category_id = :categoryId";
    public final static String getAllCategoryName = "select name from category";
    // color da test by hoang hai 20-8-23
    static final String getAllColor = "select * from color";
    static final String getColorById = "select * from color where color_id = :colorId";
    static final String insertColor = "insert into color(color_id,name, code) values(:colorId,:name, :code)";
    static final String updateColor = "update color set name = :name, code = :code where color_id = :colorId";
    static final String deleteColor = "delete from color where color_id = :colorId";
    static final String getColorByProductId = "select * from color where color_id in (select color_id from sub_product_color where product_id = :productId)";

    // sub_product_color da test by hoang hai 20-8-23 update 26/11/2023
    static final String getAllColorProduct = "select * from sub_product_color";
    public static final String getColorProductByProductIdAndColorId = "select * from sub_product_color where product_id = :productId and color_id = :colorId";
    static final String getColorProductByProductId = "select * from sub_product_color where product_id = :productId";
    static final String getColorProductByColorId = "select * from sub_product_color where color_id = :colorId";
    static final String insertColorProduct = "insert into sub_product_color(color_id, product_id,inventory,price,image_product_id) values(:colorId, :productId,:inventory,:price,:imageProductId)";
    static final String updateColorProduct = "update sub_product_color set  inventory = :inventory, price = :price, image_product_id = :imageProductId where color_id = :colorId and product_id = :productId";
    static final String deleteColorProduct = "delete from sub_product_color where color_id = :colorId and product_id = :productId";
    public static final String deleteColorProductByProductId = "delete from sub_product_color where product_id = :productId";
    public static final String deleteColorProductByColorId = "delete from sub_product_color where color_id = :colorId";
    public static final String getPriceByProductIdAndColorId = "select price from sub_product_color where product_id = :productId and color_id = :colorId";
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
    public static final String insertFavorite = "insert into favorite( user_id, product_id) values( :userId, :productId)";
    public static final String deleteFavorite = "delete from favorite where product_id = :productId and user_id = :userId";
    public static final String getAllFavorite = "select * from favorite";
    public static final String hasFavoriteByUserIdAndProductId = "SELECT COUNT(*) > 0 FROM favorite WHERE user_id = :userId AND product_id = :productId";

    //    Image product da test va fix by Hoang Hai 21-8-23
    static final String getAllImageProduct = "select * from image_product";
    static final String getImageProductById = "select * from image_product where image_product_id = :imageProductId";
    static final String getImageProductByProductId = "select * from image_product where product_id = :productId";
    static final String insertImageProduct = "insert into image_product(image_product_id, link, product_id,color_id) values(:imageProductId, :link, :productId, :colorId)";
    static final String updateImageProduct = "update image_product set link = :link, product_id = :productId ,color_id =:colorId where image_product_id = :imageProductId";
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

    public static final String isEmailOrUserNameAlreadyExists = "select count(*) from user where email= :key or user_name=:key";
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
    public static final String insertOrder = "INSERT INTO `order` (order_id, user_id, full_address, price, discount, shipping_fee, total, send_day, receive_day, status) " + "VALUES (:orderId, :userId, :fullAddress, :price, :discount, :shippingFee, :total, :sendDay, :receiveDay, :status);";
    public static final String updateOrder = "UPDATE `order` " + "SET user_id = :userId, full_address = :fullAddress, price = :price, discount = :discount, shipping_fee = :shippingFee, total = :total, send_day = :sendDay, receive_day = :receiveDay, status = :status " + "WHERE order_id = :orderId;";
    public static final String deleteOrderById = "DELETE FROM `order` WHERE order_id = :orderId";
    public static final String getAllOrderByUserId = "SELECT * FROM `order` WHERE user_id=:userId";
    //OrderItem
    public static final String getProductsByOrderId = "SELECT * FROM order_item WHERE order_id=:orderId";
    public static final String insertOrderItem = "INSERT INTO order_item (order_item_id, order_id, product_id, quantity, color_id, price)   " + "VALUES (:getOrderItemId,:getOrderId,:getProductId,:getQuantity,:getColorId,:getPrice);";
    public static final String updateOrderItem = "UPDATE order_item " + "SET quantity = :getQuantity, color_id = :getColorId, price = :getPrice " + "WHERE order_item_id = :getOrderItemId;";
    public static final String deleteOrderItemById = "DELETE FROM order_item WHERE order_item_id = :orderItemId";


    // Supplier da test va fix by Hoang Hai 21-8-23
    static final String getAllSupplier = "Select * from Supplier";
    static final String getSupplierById = "Select * from Supplier where supplier_id = :supplierId";
    static final String getSuppliersByName = "Select * from Supplier where name like = :name";
    static final String insertSupplier = "Insert into `Supplier`(`supplier_id`, `name`)" + " values (:supplierId, :name)";
    static final String updateSupplier = "Update `Supplier` set `name` = :name where `supplier_id` = :supplierId";
    static final String deleteSupplier = "Delete from `Supplier` where `supplier_id` = :supplierId";
    // product
    // update 14/9/2023 -- update 24/9/2023-- update 26/11/2023
    static final String getAllProduct = "Select * from Product";
    static final String getProductById = "Select * from Product where product_id = :id";
    static final String getProductsByName = "Select * from Product where name like CONCAT('%', :name, '%')";
    static final String getProductByCategoryId = "Select * from Product where category_id = :categoryId";
    static final String getProductByBrandId = "Select * from Product where brand_id = :brandId";
    static final String getProductBySupplierId = "Select * from Product where supplier_id = :supplierId";
    static final String getProductByDiscount = "Select * from Product where discount_id = :discountId";
    static final String getProductByStatus = "Select * from Product where status = :status";
    static final String insertProduct = "INSERT INTO product (product_id, name,  description, wheelSize, material, warranty, discount_id, category_id, brand_id, supplier_id, status) " + "VALUES (:productId, :name, :description, :wheelSize, :material, :warranty, :discountId, :categoryId, :brandId, :supplierId, :status)";
    static final String updateProduct = "UPDATE product " + "SET name = :name,  description = :description, wheelSize = :wheelSize, " + "material = :material, warranty = :warranty, " + "discount_id = :discountId, category_id = :categoryId, brand_id = :brandId, supplier_id = :supplierId, status = :status " + "WHERE product_id = :productId";
    static final String deleteProduct = "DELETE FROM product WHERE product_id = :productId";
    static final String getProductByPrice = "Select * from Product where product_id in (select product_id from sub_product_color where price between :minPrice and :maxPrice)";
    static final String getProductByCategoryName = "select * from product where category_id in (select category_id from category where name like concat('%', :name, '%'))";
    static final String getProductByWheelSize = "Select * from Product where wheelSize = :wheelSize";

    public static final String getInventory = "SELECT SUM(sub_product_color.inventory) AS total_inventory\n" +
            "FROM product JOIN sub_product_color ON product.product_id =sub_product_color.product_id\n" +
            "WHERE product.product_id = :productId\n" +
            "GROUP BY  product.product_id,product.name;";


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


    public static final String getTop1Product = "select * from (select * , row_number() over (partition by category_id order by category_id) as row from product) as t where row = 1";
    public static final String getTop1ImageProductByProductId = "select * from (select * , row_number() over (partition by product_id order by product_id) as row from image_product) as t where row = 1 and product_id = :productId";

    // Cert
    public static final String getAllCert = "select * from cert";
    public static final String getCertBySeri = "select * from cert where seri = :seri";
    public static final String insertCert = "insert into cert(seri,public_key,cert_value) values(:seri,:publicKey,:certValue)";
    // UserCert
    public static final String getAllSeriOfUser = "select * from user_seri where user_id = :userId";
    public static final String checkSeriAndUser = "select count(*) > 0 from user_seri where user_id = :userId and seri = :seri";
    public static final String insertUserSeri = "insert into user_seri(user_id,seri) values(:userId,:seri)";

    // revoke
    public static final String getAllRevocationCert = "select * from revocation_cert";
    public static final String getRevocationCertBySeri = "select * from revocation_cert where seri = :seri";
    public static final String insertRevocationCert = "insert into revocation_cert(seri,revoked_at) values(:seri,:revokedAt)";
    public static final String updateRevocationCert = "update revocation_cert set revoked_at = :revokedAt where seri = :seri";
    public static final String deleteRevocationCert = "delete from revocation_cert where seri = :seri";
    //OrderSig
    public static final String getSigByOrderId = "select * from order_sig where order_id = :orderId";
    public static final String insertOrderSig = "insert into order_sig(order_id,sig) values(:orderId,:sig)";
    public static final String deleteOrderSig = "delete from order_sig where order_id = :orderId";

    //
}
