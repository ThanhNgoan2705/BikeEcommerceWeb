<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/4/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vie">
<head>
    <meta charset="UTF-8">
    <title>Xe Điện Long Vũ</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <%--    MDB CSS--%>
    <style>INPUT:-webkit-autofill, SELECT:-webkit-autofill, TEXTAREA:-webkit-autofill {
        animation-name: onautofillstart
    }

    INPUT:not(:-webkit-autofill), SELECT:not(:-webkit-autofill), TEXTAREA:not(:-webkit-autofill) {
        animation-name: onautofillcancel
    }

    @keyframes onautofillstart {
    }

    @keyframes onautofillcancel {
    }</style>
    <link href="/mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="/mdb/css/mdb.min.css" rel="stylesheet">
    <link href="/mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">

</head>
<body class="cart-v2 hidden-sn white-skin animated">
<!--onTop-->
<%@include file="default/ontopButton.jsp" %>
<!--onTop-->

<!-- Navigation -->
<%@ include file="default/header.jsp" %>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp" %>
<!-- Mega menu -->


<!-- Main Layout -->
<main class="mt-2">

    <!-- Main Container -->
    <div class="container ">

        <!-- Section cart -->
        <section class="section my-5 pb-5">

            <div class="card card-ecommerce">

                <div class="card-body">
                    <h2 class="h2-responsive font-weight-bold text-center my-5">Shopping cart</h2>
                    <!-- Shopping Cart table -->
                    <div class="table-responsive">

                        <table class="table product-table table-cart-v-2">

                            <!-- Table head -->
                            <thead class="mdb-color lighten-5">

                            <tr>

                                <th></th>

                                <th class="font-weight-bold">

                                    <strong>Product</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>Color</strong>

                                </th>

                                <th></th>

                                <th class="font-weight-bold">

                                    <strong>Price</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>QTY</strong>

                                </th>

                                <th class="font-weight-bold">

                                    <strong>Amount</strong>

                                </th>

                                <th></th>

                            </tr>

                            </thead>
                            <!-- Table head -->
                            <c:forEach var="item" items="${itemList}">
                            <!-- Table body -->
                            <tbody>

                            <!-- First row -->
                            <tr id="${item.cartItemId}">

                                <th scope="row">

                                    <img src="${link}"
                                         alt=""
                                         class="img-fluid z-depth-0">

                                </th>

                                <td>

                                    <h5 class="mt-3">

                                        <strong>${item.product.name}</strong>

                                    </h5>

                                    <p class="text-muted">${item.product.brand.name}</p>

                                </td>

                                <td>

                                    <select id="colors-${item.cartItemId}" name="colors"
                                            onchange="updateColorAndQuantity('${item.cartItemId}',document.querySelector('#quantity-${item.cartItemId}').value, this.value);updatePriceByColorOnItemId('${item.cartItemId}',this.value)">
                                        <c:forEach var="color" items="${item.product.colors}">
                                            <option value="${color.colorId}">
                                                    ${color.name}
                                            </option>
                                        </c:forEach>
                                    </select>

                                </td>

                                <td></td>


                                <td id="price-${item.cartItemId}">${priceItem}</td>


                                <td class="text-center text-md-left">

                                    <span class="qty"></span>

                                    <div class="def-number-input number-input safari_only">

                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepDown();updateColorAndQuantity('${item.cartItemId}',this.parentNode.querySelector('input[type=number]').value,document.getElementById('colors-${item.cartItemId}').value ) "
                                                class="minus"></button>
                                        <input class="quantity" min="1" name="quantity" value="${item.quantity}"
                                               id="quantity-${item.cartItemId}"
                                               type="number"
                                               oninput="updateColorAndQuantity('${item.cartItemId}',this.value,document.getElementById('colors-${item.cartItemId}').value)">
                                        <button onclick="this.parentNode.querySelector('input[type=number]').stepUp();updateColorAndQuantity('${item.cartItemId}',this.parentNode.querySelector('input[type=number]').value,document.getElementById('colors-${item.cartItemId}').value )"

                                                class="plus"></button>
                                    </div>

                                </td>

                                <td class="font-weight-bold item">


                                    <strong id="total-for-one-item-${item.cartItemId}">${totalPriceItem} </strong>


                                </td>

                                <td>
                                    <button type="button" class="btn btn-danger btn-sm m-2 " data-toggle="tooltip"
                                            data-placement="top"
                                            title="Remove item"
                                            onclick="removeItem('${item.cartItemId}','${item.cartItemId}')"><i
                                            class="fa-solid fa-trash"></i></button>
                                </td>

                            </tr>
                            </c:forEach>
                            <!-- First row -->
                            <tr>

                                <td colspan="3"></td>

                                <td>

                                    <h4 class="mt-2">

                                        <strong>Total</strong>

                                    </h4>

                                </td>
                                <td class="text-right">

                                    <h4 class="mt-2">

                                        <strong id="total-all"></strong>

                                    </h4>

                                </td>

                                <td colspan="3" class="text-right">

                                    <a type="button" class="btn btn-primary btn-rounded" role="button"
                                       href="/user/checkout">Complete purchase

                                        <i class="fas fa-angle-right right"></i>

                                    </a>

                                </td>
                            </tr>

                            </tbody>

                            <!-- Table body -->

                        </table>

                    </div>
                    <!-- Shopping Cart table -->

                </div>
            </div>


        </section>
        <!-- Section cart -->

    </div>
    <!-- Main Container -->

</main>
<!-- Main Layout -->

<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->

<script src="/mdb/js/popper.min.js"></script>
<script src="/mdb/js/jquery.min.js"></script>
<script src="/mdb/js/bootstrap.min.js"></script>
<script src="/mdb/js/mdb.min.js"></script>
<script src="/mdb/js/default.js"></script>
<script>
    function updateColorAndQuantity(cartItemId, quantity, colorId) {
        // Đường dẫn của servlet
        var servletUrl = '/user/updateCartItem';

        // Dữ liệu gửi đi
        var data = {
            cartItemId: cartItemId,
            colorId: colorId,
            quantity: quantity
        };
        console.log(data);
        // Thực hiện yêu cầu AJAX bằng jQuery
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {
                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                updatePriceByColorOnItemId(cartItemId, colorId);
                updateTotal(cartItemId, quantity, document.getElementById('price-' + cartItemId).textContent);
            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);
            }
        });
    }
    function updateTotal(cartItemId, quantity, price) {
        let priceItem;
        if (price == null) {
            price = 0;
        } else {
            priceItem = price.replace(' VND', '');
            priceItem = priceItem.replaceAll(',', '');
            price = parseFloat(priceItem);
            console.log(price);
        }
        var total = quantity * price;
        document.querySelector(`#total-for-one-item-` + cartItemId).textContent = writeToCurrencyString(total) + " VND";
        updateTotalAll();
    }
    function writeToCurrencyString(price){
        return  price.toLocaleString('en-US');
    }
    function updatePriceByColorOnItemId(cartItemId, colorId) {
        var servletUrl = '/getPriceByColorAndProductId';
        var data = {
            cartItemId: cartItemId,
            colorId: colorId
        };
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {
                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                var priceElement = document.getElementById(`price-` + cartItemId);
                console.log(priceElement);
                priceElement.textContent = response;
            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);

            }
        });
    }

    function deleteItem(cartItemId, callback) {
        // Đường dẫn của servlet
        var servletUrl = '/user/deleteProductFromCart';

        // Dữ liệu gửi đi
        var data = {
            cartItemId: cartItemId
        };
        console.log(data);
        // Thực hiện yêu cầu AJAX bằng jQuery
        $.ajax({
            type: 'POST',
            url: servletUrl,
            data: data,
            success: function (response) {

                console.log('Request succeeded:', response);
                // Xử lý dữ liệu nhận được từ servlet (nếu cần)
                callback(true);

            },
            error: function (xhr, status, error) {
                console.error('Request failed:', status, error);
                callback(false);
            }
        });

    }

    function removeItem(rowId, cartItemId) {
        var isConfirmed = confirm('Bạn chắc chắn muốn xóa item này?');
        var itemCount = parseInt($(".number").text());
        if (isConfirmed) {
            var rowToRemove = document.getElementById(rowId);
            console.log(rowToRemove);
            if (rowToRemove) {
                rowToRemove.remove();
                deleteItem(cartItemId, function (callback) {
                    if (callback) {
                        $('.number').text(itemCount - 1);
                        console.log('delete success');
                        updateTotalAll();
                    } else {
                        console.log('delete fail');
                    }
                });
            } else {
                console.error('Row not found:', rowId);
            }
        } else {
            console.log('User cancelled');
        }
    }

    function updateTotalAll() {
        var totalAll = 0;
        // Lặp qua tất cả các phần tử có class "font-weight-bold" trong tbody
        var itemTotalElements = document.querySelectorAll('tbody .item');
        itemTotalElements.forEach(function (element) {
            var itemTotalPrice = element.textContent.replace(' VND', '');
            // Trích xuất giá trị tổng từ phần tử và chuyển đổi thành số
            var itemTotal = parseFloat(itemTotalPrice.replaceAll(',', ''));
            // Thêm giá trị tổng của sản phẩm vào tổng chung
            totalAll += itemTotal;
            console.log(itemTotal);
        });

        // Cập nhật nội dung của phần tử có id "total-all"

        document.getElementById('total-all').textContent = writeToCurrencyString(totalAll) + " VND";
    }
    window.onload = updateTotalAll;
</script>

</body>

</html>

