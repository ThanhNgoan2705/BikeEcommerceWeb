<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="../assets/css/codeVerify.css">
    <link href='https://fonts.googleapis.com/css?family=Lato&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<div id="wrapper">
    <div id="dialog">
        <button class="close">×</button>
        <h3>Please enter the 6-digit verification code we sent via Email:</h3>
        <span>(we want to make sure it's you before we contact our movers)</span>


            <div id="form">
                <input id="data" type="text" maxLength="6" size="6" name="data"/>
<%--                <input type="hidden" name="email" value="<%= request.getParameter("email") %>"/>--%>
<%--                <input type="hidden" name="type" value="<%= request.getParameter("type") %>"/>--%>
                <button class="btn btn-primary btn-embossed" id="verify">Verify</button>
            </div>


        <div>
            Didn't receive the code?<br/>
            <button class="btn btn-primary btn-embossed" id="sendCodeAgain">Send code again</button><br/>
            <div id="result"></div>
            <div id="countdownTimer"></div>
        </div>
        <!--        <img src="http://jira.moovooz.com/secure/attachment/10424/VmVyaWZpY2F0aW9uLnN2Zw==" alt="test"/>-->
    </div>
</div>

</body>

</html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script>
    $(document).ready(function() {
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
                    $("#result").html(data); // Hiển thị phản hồi từ máy chủ
                    if (data == "Success") {
                        window.location.href = "/index.jsp";
                    }
                },
                error: function () {
                    $("#result").html("Có lỗi xảy ra khi gọi máy chủ.");
                }
            });
        });
        $("#sendCodeAgain").click(function() {
            $("#sendCodeAgain").prop("disabled", true);
            var data ={
                email: "<%= request.getParameter("email") %>" ,
                type: <%= request.getParameter("type") %>
            }
            $.ajax({
                type: "POST",
                url: "/sendVerifyCode", // Đường dẫn đến Servlet
                data: data,
                success: function(data) {
                    $("#result").html(data); // Hiển thị phản hồi từ máy chủ
                    // Đếm ngược 2 phút và hiển thị trên màn hình
                    var countdown = 120; // 2 phút = 120 giây
                    var countdownInterval = setInterval(function() {
                        $("#countdownTimer").html(countdown + " seconds to send again");
                        countdown--;

                        if (countdown < 0) {
                            clearInterval(countdownInterval);
                            $("#countdownTimer").html(""); // Ẩn đồng hồ đếm khi hết thời gian
                            $("#sendCodeAgain").prop("disabled", false); // Mở lại nút
                        }
                    }, 1000); // Cập nhật đồng hồ đếm mỗi giây
                },
                error: function() {
                    $("#result").html("Có lỗi xảy ra khi gọi máy chủ.");
                    $("#sendCodeAgain").prop("disabled", false);

                }
            });
        });
    });
</script>

