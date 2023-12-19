<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/4/2023
  Time: 11:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="vi">
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
    <link href="mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="mdb/css/mdb.min.css" rel="stylesheet">
    <link href="mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="mdb/css/style.css" rel="stylesheet">
    <link href="mdb/css/default.css" rel="stylesheet">
    <link href="mdb/css/verifyCode.css" rel="stylesheet">
</head>
<body class="homepage-v2 hidden-sn white-skin animated">
<!-- Navigation -->
<%@ include file="default/header.jsp" %>
<!-- Navigation -->

<%--main content--%>
<div class="container my-5 py-5 z-depth-1">


    <!--Section: Content-->
    <section class="px-md-5 mx-md-5 text-center text-lg-left dark-grey-text">


        <!--Grid row-->
        <div class="row d-flex justify-content-center">

            <!--Grid column-->
            <div class="col-md-6">

                <!-- Default form subscription -->


                    <p class="h4 mb-4">Verify Code</p>

                    <h3>Please enter the 6-digit verification code we sent via Email:</h3>
                    <span>(we want to make sure it's you before we contact our movers)</span>
<%--                    &lt;%&ndash;Email&ndash;%&gt;--%>
<%--                    <input id="email" type="text" name="email" value="<% request.getParameter("email"); %>" hidden=""/>--%>
<%--                    &lt;%&ndash;Type&ndash;%&gt;--%>
<%--                    <input id="type" type="text"  name="type" value="<% request.getParameter("type"); %>" hidden=""/>--%>
                    <!-- Name -->
                    <input id="data" type="text" maxLength="6" size="6" name="code"/>

                    <!-- Sign in button -->
                    <button class="btn btn-info btn-block"  id="verify">submit</button>
                    <button  id="sendCodeAgain">Send code again</button>
                    <br/>
                    <div id="result"></div>
                    <div id="countdownTimer"></div>



                <!-- Default form subscription -->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->


    </section>
    <!--Section: Content-->


</div>
<%--main content--%>

<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->
<script src="mdb/js/jquery.min.js"></script>
<script src="mdb/js/bootstrap.min.js"></script>
<script src="mdb/js/mdb.min.js"></script>

<script>
    $(document).ready(function () {
        $("#verify").click(function () {
            var data = {
                email: "<%= request.getParameter("email") %>",
                type: <%= request.getParameter("type") %>,
                code: $("#data").val()
            }
            $.ajax({
                type: "POST",
                url: "/verify", // Đường dẫn đến Servlet
                data: data,
                success: function (data) {
                    var status = data.status;
                    console.log(status);
                    if (status === "verify email Success") {
                        window.location.href = "/home";
                    } else {
                        if (status ==="verify forgot pass Success"){
                            var token = data.token;
                            window.location.href = "/resetPass"+"?token="+token;
                        }
                    }
                    $("#result").html(status); // Hiển thị phản hồi từ máy chủ
                },
                error: function () {
                    $("#result").html("Có lỗi xảy ra khi gọi máy chủ.");
                }
            });
        });
        $("#sendCodeAgain").click(function () {
            $("#sendCodeAgain").prop("disabled", true);
            var data = {
                email: "<%= request.getParameter("email") %>",
                type: <%= request.getParameter("type") %>
            }
            $.ajax({
                type: "POST",
                url: "/sendVerifyCode", // Đường dẫn đến Servlet
                data: data,
                success: function (data) {
                    $("#result").html(data); // Hiển thị phản hồi từ máy chủ
                    // Đếm ngược 2 phút và hiển thị trên màn hình
                    var countdown = 120; // 2 phút = 120 giây
                    var countdownInterval = setInterval(function () {
                        $("#countdownTimer").html(countdown + " seconds to send again");
                        countdown--;

                        if (countdown < 0) {
                            clearInterval(countdownInterval);
                            $("#countdownTimer").html(""); // Ẩn đồng hồ đếm khi hết thời gian
                            $("#sendCodeAgain").prop("disabled", false); // Mở lại nút
                        }
                    }, 1000); // Cập nhật đồng hồ đếm mỗi giây
                },
                error: function () {
                    $("#result").html("Có lỗi xảy ra khi gọi máy chủ.");
                    $("#sendCodeAgain").prop("disabled", false);

                }
            });
        });
    });
</script>

</body>
</html>
