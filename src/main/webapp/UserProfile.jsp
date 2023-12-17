
<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vie">
<head>
    <meta charset="UTF-8">
    <title>Xe Điện Long Vũ</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    <link
            href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
            rel="stylesheet"
    />
    <%--    MDB CSS--%>
    <style>INPUT:-webkit-autofill,SELECT:-webkit-autofill,TEXTAREA:-webkit-autofill{animation-name:onautofillstart}INPUT:not(:-webkit-autofill),SELECT:not(:-webkit-autofill),TEXTAREA:not(:-webkit-autofill){animation-name:onautofillcancel}@keyframes onautofillstart{}@keyframes onautofillcancel{}</style>
    <link href="mdb/css/bootstrap.min.css" rel="stylesheet">
    <link href="mdb/css/mdb.min.css" rel="stylesheet">
    <link href="mdb/css/addons/compiled-addons-4.20.0.min.css">
    <link href="mdb/css/style.css" rel="stylesheet">
    <link href="mdb/css/default.css" rel="stylesheet">
    <style>
        /* CSS nền hiển thị Modal */
        .nenmodal .nenmodal2 {
            position:fixed;
            top:0px;
            left:0px;
            width:100vw;
            height:100vh;
            background:rgba(0,0,0,0.7);
            z-index:1;
            display:none;
        }
        /* CSS bảng nội dung Modal */
        .nenmodal .ndmodal {
            position:absolute;
            top:50%;
            left:50%;
            transform:translate(-50%,-50%) scale(0);
            background:#fff;
            width:600px;
            z-index:2;
            text-align:center;
            padding:20px;
            box-sizing:border-box;
            font-family:"Open Sans",sans-serif;
            border-radius:20px;
            display: block;
            position: fixed;
            box-shadow:0px 0px 10px #111;
        }
        @media (max-width: 700px) {
            .nenmodal .ndmodal {width:90%;}
        }
        /* CSS bao bọc của nút tắt Modal */
        .nenmodal .closemodal {
            text-align:center;
            margin-top:-40px;
            margin-bottom:10px;
        }
        /* CSS tieu de của Modal */
        .titlemodal{
            font-weight:bold;
            font-size:20px;
            margin-bottom:10px;
        }
        /* CSS nút tắt modal */
        .closemodal button{
            width:40px;
            height:40px;
            font-size:30px;
            padding:0px;
            border-radius:100%;
            background:#333;
            color:#fff;
            border:none;
        }
        .nenmodal.active .nenmodal2 {
            display:block;
        }
        /* CSS hiệu ứng hiển thị Modal */
        .nenmodal.active .ndmodal {
            transition:all 300ms ease-in-out;
            transform:translate(-50%,-50%) scale(1);

        }
        .col {
            position: relative;
            width: 150px;
            padding-right: 15px;
            padding-left: 15px; }
        .group {
            margin-bottom: 5px;
        }
        .contactForm .label1 {
            color: #000;
            text-transform: uppercase;
            font-size: 12px;
            font-weight: 600; }
        .btnblock{
            width: 200px;
            height: 35px;
            background-color: #0d0d0d;
            color: #f1f1f1;
        }
    </style>
</head>

<body class="homepage-v1 hidden-sn white-skin animated">

<!--onTop-->
<%@include file="default/ontopButton.jsp"%>
<!--onTop-->

<!-- Navigation -->
<%@ include file="default/header.jsp"%>
<!-- Navigation -->

<!-- Mega menu -->
<%@include file="default/menu.jsp"%>
<!-- Mega menu -->

<!-- Main Container -->
<div class="card">
    <div class="card-body">

        <!--Grid row-->
        <div class="row">

            <!--Grid column-->
            <div class="col-lg-8 mb-4">

                <!-- Pills navs -->
                <ul class="nav md-pills nav-justified pills-primary font-weight-bold">
                    <li class="nav-item">
                        <a class="nav-link active" data-toggle="tab" href="#tabUserInfor" role="tab">Profile</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabAddress" role="tab">List Address</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabOrderHistory" role="tab">Order History</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabKeyManagement" role="tab">Key Management</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-toggle="tab" href="#tabChangePassWord" role="tab">Change Password</a>
                    </li>
                </ul>

                <!-- Pills panels -->
                <div class="tab-content pt-4">

                    <!--Panel 1-->
                    <div class="tab-pane fade in show active" id="tabUserInfor" role="tabpanel">

                        <!--Card content-->
                        <form>

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-md-6 mb-4">

                                    <!--firstName-->
                                    <label for="firstName" class="">First name</label>
                                    <input type="text" id="firstName" class="form-control">

                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-md-6 mb-2">

                                    <!--lastName-->
                                    <label for="lastName" class="">Last name</label>
                                    <input type="text" id="lastName" class="form-control">

                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                            <!--email-->
                            <label for="email" class="">Email </label>
                            <input type="text" id="email" class="form-control mb-4" placeholder="youremail@example.com">

                            <!--phone-->
                            <label for="phone" class="">Phone </label>
                            <input type="text" id="phone" class="form-control mb-4" placeholder="0123456789">

                            <!--address-->
                            <label for="address" class="">Address</label>
                            <input type="text" id="address" class="form-control mb-4" placeholder="1234 Main St">

                            <!--Grid row-->
                            <div class="row">

                                <!--Grid column-->
                                <div class="col-lg-4 col-md-12 mb-4">

                                    <label for="country">Country</label>
                                    <select class="custom-select d-block w-100" id="country" required>
                                        <option value="">Choose...</option>
                                        <option>United States</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please select a valid country.
                                    </div>

                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-lg-4 col-md-6 mb-4">

                                    <label for="state">State</label>
                                    <select class="custom-select d-block w-100" id="state" required>
                                        <option value="">Choose...</option>
                                        <option>California</option>
                                    </select>
                                    <div class="invalid-feedback">
                                        Please provide a valid state.
                                    </div>

                                </div>
                                <!--Grid column-->

                                <!--Grid column-->
                                <div class="col-lg-4 col-md-6 mb-4">

                                    <label for="zip">Zip</label>
                                    <input type="text" class="form-control" id="zip" placeholder="" required>
                                    <div class="invalid-feedback">
                                        Zip code required.
                                    </div>

                                </div>
                                <!--Grid column-->

                            </div>
                            <!--Grid row-->

                            <hr>

                            <div class="mb-1">
                                <input type="checkbox" class="form-check-input filled-in" id="chekboxRules">
                                <label class="form-check-label" for="chekboxRules">I accept the terms and conditions</label>
                            </div>
                            <div class="mb-1">
                                <input type="checkbox" class="form-check-input filled-in" id="safeTheInfo">
                                <label class="form-check-label" for="safeTheInfo">Save this information for next time</label>
                            </div>
                            <div class="mb-1">
                                <input type="checkbox" class="form-check-input filled-in" id="subscribeNewsletter">
                                <label class="form-check-label" for="subscribeNewsletter">Subscribe to our newsletter</label>
                            </div>

                            <hr>

                            <button class="btn btn-primary btn-lg btn-block" type="submit">Next step</button>

                        </form>

                    </div>
                    <!--/.Panel 1-->

                    <!--Panel 2-->
                    <div class="tab-pane fade" id="tabAddress" role="tabpanel">

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-5 mb-4">

                                <img src="https://mdbootstrap.com/img/Photos/Others/images/43.webp" class="img-fluid z-depth-1-half"
                                     alt="Second sample image">

                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-7 mb-4">

                                <h5 class="mb-3 h5">Additional premium support</h5>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, ea ut aperiam corrupti,
                                    dolorem.</p>

                                <!--Name-->
                                <select class="mdb-select colorful-select dropdown-info">
                                    <option value="" disabled>Choose a period of time</option>
                                    <option value="1" selected>+6 months : 200$</option>
                                    <option value="2">+12 months: 400$</option>
                                    <option value="3">+18 months: 800$</option>
                                    <option value="4">+24 months: 1200$</option>
                                </select>

                                <button type="button" class="btn btn-primary btn-md">Add premium support to the cart</button>

                            </div>
                            <!--Grid column-->

                        </div>
                        <!--Grid row-->

                        <hr class="mb-5">

                        <!--Grid row-->
                        <div class="row">

                            <!--Grid column-->
                            <div class="col-md-5 mb-4">

                                <img src="https://mdbootstrap.com/img/Photos/Others/images/44.webp" class="img-fluid z-depth-1-half"
                                     alt="Second sample image">

                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-7 mb-4">

                                <h5 class="mb-3 h5">MDB Membership</h5>

                                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Veritatis, ea ut aperiam corrupti,
                                    dolorem.</p>

                                <!--Name-->
                                <select class="mdb-select colorful-select dropdown-info">
                                    <option value="" disabled>Choose a period of time</option>
                                    <option value="1" selected>+6 months : 200$</option>
                                    <option value="2">+12 months: 400$</option>
                                    <option value="3">+18 months: 800$</option>
                                    <option value="4">+24 months: 1200$</option>
                                </select>

                                <button type="button" class="btn btn-primary btn-md">Add MDB Membership to the cart</button>

                            </div>
                            <!--Grid column-->

                        </div>
                        <!--Grid row-->

                        <hr class="mb-4">

                        <button class="btn btn-primary btn-lg btn-block" type="submit">Next step</button>

                    </div>
                    <!--/.Panel 2-->

                    <!--Panel 3-->
                    <div class="tab-pane fade" id="tabOrderHistory" role="tabpanel">

                        <div class="d-block my-3">
                            <div class="mb-2">
                                <input name="group2" type="radio" class="form-check-input with-gap" id="radioWithGap4" checked
                                       required>
                                <label class="form-check-label" for="radioWithGap4">Credit card</label>
                            </div>
                            <div class="mb-2">
                                <input iname="group2" type="radio" class="form-check-input with-gap" id="radioWithGap5"
                                       required>
                                <label class="form-check-label" for="radioWithGap5">Debit card</label>
                            </div>
                            <div class="mb-2">
                                <input name="group2" type="radio" class="form-check-input with-gap" id="radioWithGap6" required>
                                <label class="form-check-label" for="radioWithGap6">Paypal</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <label for="cc-name123">Name on card</label>
                                <input type="text" class="form-control" id="cc-name123" placeholder="" required>
                                <small class="text-muted">Full name as displayed on card</small>
                                <div class="invalid-feedback">
                                    Name on card is required
                                </div>
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="cc-number123">Credit card number</label>
                                <input type="text" class="form-control" id="cc-number123" placeholder="" required>
                                <div class="invalid-feedback">
                                    Credit card number is required
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-3 mb-3">
                                <label for="cc-expiration123">Expiration</label>
                                <input type="text" class="form-control" id="cc-expiration123" placeholder="" required>
                                <div class="invalid-feedback">
                                    Expiration date required
                                </div>
                            </div>
                            <div class="col-md-3 mb-3">
                                <label for="cc-cvv123">CVV</label>
                                <input type="text" class="form-control" id="cc-cvv123" placeholder="" required>
                                <div class="invalid-feedback">
                                    Security code required
                                </div>
                            </div>
                        </div>
                        <hr class="mb-4">

                        <button class="btn btn-primary btn-lg btn-block" type="submit">Place order</button>

                    </div>
                    <!--/.Panel 3-->
                    <!--Panel 4-->
                    <div class="tab-pane fade" id="tabKeyManagement" role="tabpanel">
                        <button class="btn btn-primary btn-lg btn-block" onclick="momodal()"  >Create Key</button>
                        <hr class="mb-4">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-wrap">
                                    <table class="table table-dark">
                                        <thead>
                                        <tr class="bg-dark">
                                            <th>Invoce</th>
                                            <th>Customer</th>
                                            <th>Ship</th>
                                            <th>Price</th>
                                            <th>Pruchased Price</th>
                                            <th>&nbsp;</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <tr class="bg-primary">
                                            <th scope="row">1001</th>
                                            <td>Mark Otto</td>
                                            <td>Japan</td>
                                            <td>$3000</td>
                                            <td>$1200</td>
                                            <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                        </tr>

                                        <tr class="bg-success">
                                            <th scope="row">1001</th>
                                            <td>Mark Otto</td>
                                            <td>Japan</td>
                                            <td>$3000</td>
                                            <td>$1200</td>
                                            <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                        </tr>

                                        <tr class="bg-warning">
                                            <th scope="row">1001</th>
                                            <td>Mark Otto</td>
                                            <td>Japan</td>
                                            <td>$3000</td>
                                            <td>$1200</td>
                                            <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                        </tr>

                                        <tr class="bg-danger">
                                            <th scope="row">1001</th>
                                            <td>Mark Otto</td>
                                            <td>Japan</td>
                                            <td>$3000</td>
                                            <td>$1200</td>
                                            <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                        </tr>

                                        <tr class="bg-info">
                                            <th scope="row">1001</th>
                                            <td>Mark Otto</td>
                                            <td>Japan</td>
                                            <td>$3000</td>
                                            <td>$1200</td>
                                            <td><a href="#"><i class="fa fa-lock" aria-hidden="true"></i></a></td>
                                        </tr>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="nenmodal" id="nenmodal-1">
                        <div class="nenmodal2"></div>
                        <div class="ndmodal">
                            <div class="closemodal"><button onclick="momodal()">×</button></div>


                            <div method="POST" id="contactForm" name="contactForm" class="contactForm">
                                <button class="btnblock" type="submit" >Create Key</button>
                                <div class="row">

                                    <div class="col">

                                        <div class="group">
                                            <label class="label1" >Private Key</label>
                                            <input type="text" class="form-control" >
                                            <i class="fa fa-download" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="group">
                                            <label class="label1">Public Key</label>
                                            <input type="text" class="form-control" >
                                            <i class="fa fa-download" aria-hidden="true"></i>
                                        </div>
                                    </div>
                                    <div class="col">
                                        <div class="group">
                                            <label class="label1" >Seri</label>
                                            <input type="text" class="form-control" >

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/.Panel 4-->

                </div>

                <!-- Pills panels -->


            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-lg-4 mb-4">

                <button class="btn btn-primary btn-lg btn-block" type="submit">Place order</button>

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
            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

    </div>
</div>
<!-- Main Container -->


<!-- Footer -->
<%@include file="default/footer.jsp"%>
<!-- Footer -->
<script src="mdb/js/jquery.min.js"></script>
<script src="mdb/js/bootstrap.min.js"></script>
<script src="mdb/js/mdb.min.js"></script>
<script type="text/javascript">
    /* WOW.js init */
    new WOW().init();

    // Tooltips Initialization
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    })

    // Material Select Initialization
    $(document).ready(function () {

        $('.mdb-select').material_select();
    });

    // SideNav Initialization
    $(".button-collapse").sideNav();

</script>
<script src="mdb/js/default.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/axios/1.5.1/axios.min.js"></script>
<script>
    var Parameter={
        url:'./data/vietnamProvince.json',
        method:'GET',
        responseType:'application/json'
    }
    var promise=axios(Parameter);

</script>
<script>
    function momodal(){
        document.getElementById("nenmodal-1").classList.toggle("active");
    }
</script>
</body>
</html>



