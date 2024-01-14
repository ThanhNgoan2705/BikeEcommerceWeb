<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
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
    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/css/mdb.min.css">
    <link rel="stylesheet"
          href="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/docs-app/css/compiled-addons-4.20.0.min.css">
    <link href="/mdb/css/style.css" rel="stylesheet">
    <link href="/mdb/css/default.css" rel="stylesheet">

</head>
<body class="product-v2 hidden-sn white-skin animated">

<!--onTop-->
<%@include file="default/ontopButton.jsp" %>
<!--onTop-->

<!-- Navigation -->
<%@ include file="default/header.jsp" %>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp" %>
<!-- Mega menu -->

<!-- Main Container -->
<div class="card">
    <div class="card-body">
        <!--Grid row-->
        <div class="row">
            <!--Grid column-->
            <div class="col-lg-8 mb-4">
                <p class="nav-link active" data-toggle="tab" href="#verify-order" role="tab">Order Verification- Order: <span class="btn-primary" id="orderId">${order.orderId}</span></p>
                <span class="clearfix"></span>
                <!-- Pills panels -->
                <div class="tab-content pt-4">
                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="verify-order" role="tabpanel">
                        <!--Card content-->
                            <div class="row d-flex justify-content-center">
                                <div class="col-md-12 text-left">
                                    <h4 class="font-weight-bold mb-4 text-muted">Get the code to sign, please</h4>
                                    <div class="input-group mb-4">
                                        <input type="text" class="form-control" id="code" placeholder="" value="${code}"
                                               required aria-describedby="button-addon2">
                                        <div class="input-group-append">
                                            <button id="button-addon2"
                                                    class="btn btn-md btn-outline-default m-0 px-3 py-2 z-depth-0 waves-effect"
                                                    onclick="copyCode()">Copy
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12 mb-3">
                                    <form>
                                    <div class="file-field">
                                        <div class="btn btn-primary btn-sm float-left">
                                            <span>Choose file</span>
                                            <input type="file">
                                        </div>
                                        <div class="file-path-wrapper">
                                            <input class="file-path validate" id="signatureFile" type="text"
                                                   placeholder="Upload your signature file">
                                        </div>
                                    </div>
                                        <div class="col-lg-3">
                                        <button class="btn btn-primary btn-lg btn-block" onclick="verifyFile()">Verify</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                    </div>
                    <!--/.Panel 1-->
                </div>
                <!-- Pills panels -->
            </div>
            <!--Grid column-->
            <!--Grid column-->
            <div class="col-lg-4 mb-4">
                <!--Card-->
                <div class="card">

                    <!--Card content-->
                    <div class="card-body">
                        <h4 class="mb-4 mt-1 h5 text-center font-weight-bold">Summary</h4>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                MDBootstrap UI KIT (jQuery version) - License 6-10 people + unlimited projects
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                Premium support - 2 years
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dd class="col-sm-8">
                                MDB Membership - 2 years
                            </dd>
                            <dd class="col-sm-4">
                                $ 2000
                            </dd>
                        </dl>

                        <hr>

                        <dl class="row">
                            <dt class="col-sm-8">
                                Total
                            </dt>
                            <dt class="col-sm-4">
                                $ 2000
                            </dt>
                        </dl>
                    </div>

                </div>
                <!--/.Card-->
                <button class="btn btn-primary btn-lg btn-block" type="submit">Place order</button>
            </div>
            <!--Grid column-->
        </div>
        <!--Grid row-->
    </div>
    <!-- Main Container -->
</div>

<!-- Footer -->
<%@include file="default/footer.jsp" %>
<!-- Footer -->
<script>
    function copyCode() {
        var code = document.getElementById("code").value;
        // write code to clipboard
        navigator.clipboard.writeText(code);
        alert("Copied successfully");
    }
</script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/jquery.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/popper.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/bootstrap.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB-Pro_4.20.0/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/wp-content/themes/mdbootstrap4/docs-app/js/bundles/4.20.0/compiled-addons.min.js"></script>
<script src="/mdb/js/default.js"></script>
<script>
    function verifyFile() {
        var code = document.getElementById("code").value;
        var signatureFile = document.getElementById("signatureFile");
        var orderId = document.getElementById("orderId").value;
        var file = signatureFile.files[0];
        if(file){
            var reader = new FileReader();
            // read file as byte array
            reader.readAsArrayBuffer(file);
            reader.onload = function (evt) {
                var arrayBuffer = reader.result;
                console.log(signature);
                if (checkValid(code, signature)) {
                    $.ajax({
                        type: "POST",
                        url: "/api/check-signature",
                        data: {
                            code: code,
                            orderId: orderId,
                            signature: arrayBuffer
                        },
                        success: function (data) {
                            if (data === "true") {
                                alert("Verify successfully");
                            } else {
                                alert("Verify failed");
                            }
                        }
                    });
                }
            }
            reader.onerror = function (evt) {
                alert("error reading file");
            }
        }
        if (code == null || code == "") {
            alert("Code is null");
            return false;
        }
        if (signatureFile == null || signatureFile == "") {
            alert("Please upload your signature file");
            return false;
        }
        return true;
        console.log(code);
        console.log(signatureFile);
    }
</script>
</body>
</html>
