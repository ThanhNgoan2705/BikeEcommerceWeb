
    function addTocart(productId) {
    // cộng thêm 1 vào giỏ hàng
    $.ajax({
        url: "/user/addProductToCart",
        type: "POST",
        data: {
            productId: productId,
            quantity: 1
        },
        success: function (data) {
            var itemCount = parseInt($(".number").text());
            var flyNumber = $('<span class="fly-number">'+(itemCount+1)+'</span>');
            // get button add position
            var position = $('.addToCart').offset();
            // set the animation's start position
            flyNumber.css({
                top: position.top ,
                left: position.left
            });
            $('.shopping-cart').append(flyNumber);
            setTimeout(function () {
                $('.number').text(itemCount+1);
                flyNumber.remove();
            },1000);
            console.log(data);
        },
        error: function (data) {
            console.log(data);
        }
    });

}