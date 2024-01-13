<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover">
    <base target="_parent">
    <%--    fontAwesome--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet" href="/admin/assert/css/all.min.css">
    <link rel="stylesheet" href="/admin/assert/css/mdb.min.css">
    <link rel="stylesheet" href="/admin/assert/css/home.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.3/css/dataTables.bootstrap5.min.css">
</head>
<body>
<!--Main Navigation-->
<%@include file="/admin/default/header.jsp" %>
<!--Main Navigation-->

<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->
    <div class="container px-4">

        <!--Section: Content-->
        <section class="text-center">
            <div class="row gx-xl-5">

                <div class="col-lg-6 mb-xl-5 mb-4">
                    <div class="card shadow-0 h-100">
                        <div class="card-header py-3">
                            <p class="mb-0">Transactions</p>
                        </div>
                        <div class="card-body d-flex align-items-center">
                            <div class="w-100" id="chart-transactions"></div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6 mb-xl-5 mb-4">
                    <div class="card shadow-0 h-100">
                        <div class="card-header py-3">
                            <p class="mb-0">Sessions</p>
                        </div>
                        <div class="card-body">
                            <div class="px-lg-5 mx-lg-5" id="chart-sessions"></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!--Section: Content-->
        <!-- Section: Assets  order Table-->
        <section class="">
            <div class="card shadow-0">
                <div class="card-header py-3">
                    <p class="mb-0">Oder Lists</p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="categoryTable" class="table table-hover flex-nowrap" style="width: 100%"></table>
                    </div>
                </div>
            </div>
            <div class="card shadow-0">
                <div class="card-header py-3">
                    <p class="mb-0">Oder Lists</p>
                </div>
                <div class="card-body">
                    <div class="table-responsive">
                        <table id="userTable" class="table table-hover flex-nowrap" style="width: 100%">
                        </table>
                    </div>
                </div>
                <!-- pagination -->
            </div>
            <div class="card shadow-0">
                <div class="card-body">
                    <div class="card-header py-3">
                        <p class="mb-0">Product Lists</p>
                    </div>
                    <div class="table-responsive">
                        <table class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                            <thead class="">
                            <tr class="">
                                <th>Name</th>
                                <th>Price</th>
                                <th>inventory</th>
                                <th>Sold</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/bitcoin.png"
                                             alt=""
                                             style="width: 45px; height: 45px" class="rounded-circle"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$62,456.24</p>
                                </td>
                                <td>
                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 150</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetailProduct">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/ethereum.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$3,346.45</p>
                                </td>
                                <td>
                    <span class="text-danger"><i class="fas fa-caret-down fa-sm"></i>
                      <span> 150</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetailProduct">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/fantom.png"
                                             class="rounded-circle"
                                             alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$1.24</p>
                                </td>
                                <td>

                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 150</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetailProduct">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/avalanche.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$54.45</p>
                                </td>
                                <td>

                    <span class="text-success"><i class="fas fa-caret-up fa-sm"></i>
                      <span> 120</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetailProduct">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/solana.png"
                                             class="rounded-circle"
                                             alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">productName</p>
                                            <p class="text-muted mb-0">Brand</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <p class="fw-normal mb-0">$52.429</p>
                                </td>
                                <td>

                    <span class="text-danger"><i class="fas fa-caret-down fa-sm"></i>
                      <span> 124</span></span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">123</p>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetailProduct">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </section>
        <!-- Section: Assets -->
        <!--        user table-->
    </div>
    <!-- Container for demo purpose -->
</main>


<!-- seeDetailOrder -->
<div class="modal fade " id="seeDetailOrder" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="container-lg modal-dialog">
        <div class="h-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-10">
                        <div class="card" style="border-radius: 10px;">
                            <div class="card-header px-4 py-5">
                                <h5 class="text-muted mb-0">Thanks for your
                                    Order, <span
                                            style="color: #a8729a;">Anna</span>!
                                </h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <p class="lead fw-normal mb-0"
                                       style="color: #a8729a;">Receipt</p>
                                    <p class="small text-muted mb-0">Receipt
                                        Voucher : 1KAU9-84UIL</p>
                                </div>
                                <div class="d-flex justify-content-between align-items-center  ">
                                    <div class="table-responsive">
                                        <table class="table table-borderless table-striped">
                                            <thead>
                                            <tr>
                                                <th>Item list</th>
                                                <th>Quantity</th>
                                                <th>Unit Price</th>
                                                <th>Tax</th>
                                                <th>Total price</th>

                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>MDBootstrap Corporate License
                                                </td>
                                                <td>1</td>
                                                <td>$319</td>
                                                <td>$73.37</td>
                                                <td>$319</td>
                                            </tr>
                                            <tr>
                                                <td>Material Design for Wordpress
                                                </td>
                                                <td>2</td>
                                                <td>$69</td>
                                                <td>$31.74</td>
                                                <td>$138</td>
                                            </tr>
                                            <tr>
                                                <td>MDBootstrap Portfolio Template
                                                    Personal Licence
                                                </td>
                                                <td>1</td>
                                                <td>$49</td>
                                                <td>$11.27</td>
                                                <td>$49</td>
                                            </tr>
                                            <tr>
                                                <td>MDBootstrap Magazine Corporate
                                                    Licence
                                                </td>
                                                <td>1</td>
                                                <td>$249</td>
                                                <td>$57.27</td>
                                                <td>$249</td>
                                            </tr>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="d-flex justify-content-between pt-2">
                                    <p class="fw-bold mb-0">Order Details</p>
                                    <p class="text-muted mb-0"><span
                                            class="fw-bold me-4">Total</span>
                                        $898.00</p>
                                </div>

                                <div class="d-flex justify-content-between pt-2">
                                    <p class="text-muted mb-0">Invoice Number :
                                        788152</p>
                                    <p class="text-muted mb-0"><span
                                            class="fw-bold me-4">Discount</span>
                                        $19.00</p>
                                </div>

                                <div class="d-flex justify-content-between">
                                    <p class="text-muted mb-0">Invoice Date : 22
                                        Dec,2019</p>
                                    <p class="text-muted mb-0"><span
                                            class="fw-bold me-4">GST 18%</span>
                                        123</p>
                                </div>

                                <div class="d-flex justify-content-between mb-5">
                                    <p class="text-muted mb-0">Recepits Voucher
                                        : 18KU-62IIK</p>
                                    <p class="text-muted mb-0"><span
                                            class="fw-bold me-4">Delivery Charges</span>
                                        Free</p>
                                </div>
                            </div>
                            <div class="card-footer border-0 px-4 py-5"
                                 style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
                                    Total
                                    paid: <span
                                        class="h2 mb-0 ms-2">$1040</span></h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--seeDetailProduct-->
<div class="modal fade " id="seeDetailProduct" tabindex="-1"
     aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="container-lg modal-dialog">
        <div class="h-100 gradient-custom">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-10">
                        <div class="card" style="border-radius: 10px;">
                            <div class="card-header px-4 py-5">
                                <h5 class="text-muted mb-0" style="color: #a8729a;">Name Product
                                </h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-sm-between ">
                                    <ul>
                                        <h2><span><b>Mô Tả Cơ Bản</b></span></h2>
                                        <li><span> <b>Thương Hiệu:</b> </span> <span>Brand</span></li>
                                        <li><span> <b>Nơi Sản Xuất</b> </span> <span>Viêt Nam</span></li>
                                        <li><span> <b>Kích Thước</b> </span> <span>24 inch</span></li>
                                        <li><span> <b>Màu Sắc</b> </span> <span>Đen, Xanh, Trắng</span></li>
                                        <li><span> <b>Độ Tuổi Thích Hợp</b> </span> <span>Người lớn</span></li>
                                        <li><span> <b>Phân Loại</b> </span> <span>Xe leo núi</span></li>
                                    </ul>
                                    <div class="col-md-6">
                                        <img decoding="async" title="Xe Đạp Touring Catani CA-2.1 700c Khung Nhôm"
                                             src="https://xedapgiakho.com/wp-content/uploads/2023/06/ngoai-hinh-xe-dap-touring-catani-ca-2-1-700c-khung-nhom.jpg"
                                             alt="Xe Đạp Touring Catani CA-2.1 700c Khung Nhôm"
                                             data-lazy-src="https://xedapgiakho.com/wp-content/uploads/2023/06/ngoai-hinh-xe-dap-touring-catani-ca-2-1-700c-khung-nhom.jpg"
                                             data-ll-status="loaded" class="entered lazyloaded w-75">
                                    </div>

                                </div>
                                <h2><span><b>Mô Tả Chi Tiết</b></span></h2>
                                <div class="d-flex justify-content-center ">
                                    <p class="text-muted mb-0">
                                        Thiết kế sang trọng đậm chất thể thao
                                        Xe Đạp Touring Catani CA-2.1 700c là sự kết hợp hoàn hảo của chất liệu và sự bền
                                        bỉ. Với các thiết kế đặt trưng của dòng xe đạp Touring giúp người lái có thể vận
                                        hành xe một cách dễ dàng trong thời gian dài.

                                        Một ưu điểm lớn của xe là trọng lượng của xe rất nhẹ nhưng có thể chịu được tải
                                        trọng cao, bổ trợ rất nhiều cho việc di chuyển trên những hành trình xa và nhẹ
                                        nhàng linh hoạt khi di chuyển trọng nội thành.

                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--Footer-->
<footer></footer>
<!--Footer-->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap5.min.js"></script>
<script type="text/javascript"
        src="/admin/assert/js/mdb.min.js"></script>
<script src="/admin/assert/js/all.min.js"></script>
<script src="/admin/assert/js/chart.min.js"></script>
<script type="text/javascript">
    // datatable category
    $(document).ready(function () {
        let cateTable, userTable;
       cateTable =  $("#categoryTable").DataTable({
            info: false,
            scrollX: true,
           processing: true,
           serverSide: true,
            ajax: {
                url: '/api/category',
                type: 'GET',
                dataType: 'json',
                contentType: 'application/json',
                dataSrc: "",
            },
            columns: [
                {
                    title: 'ID',
                    data: 'categoryId'
                },
                {
                    title: 'Name',
                    data: 'name'
                },
                {
                    title: 'Description',
                    data: 'description'
                },
                {
                    title: 'Active',
                    data: 'active',
                    render: function (data) {
                        if (data === true) {
                            return '<span class="badge bg-success">Active</span>'
                        } else {
                            return '<span class="badge bg-danger">Inactive</span>'
                        }
                    }
                },
                {
                    title: 'Level',
                    data: 'level'
                },
                {
                    title: 'Action',
                    data: 'categoryId',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#seeDetailProduct"><i class="fa-solid fa-eye"></i></button>'
                    }
                }
            ],
            columnDefs: [
                {"className": "text-end", "targets": 5},
            ],
        });
        userTable=  $("#userTable").DataTable({
            info: false,
            scrollX: true,
            processing: true,
            serverSide: true,
            ajax: {
                url: '/user/api',
                type: 'GET',
                dataType: 'json',
                contentType: 'application/json',
                dataSrc: "",
            },
            columns: [
                {
                    title: 'ID',
                    data: 'userId'
                },
                {
                    title: 'Name',
                    data: 'userName'
                },
                {
                    title: 'Email',
                    data: 'email'
                },
                {
                    title: 'Role',
                    data: 'role',
                    render: function (data) {
                        console.log(data)
                        if (data === 0) {
                            return '<span class="badge bg-warning ">PENDING</span>'
                        } else if (data === 1) {
                            return '<span class="badge bg-black">USER</span>'
                        }
                        else if (data === 2) {
                            return '<span class="badge bg-success">ADMIN</span>'
                        }
                        else if (data === 3) {
                            return '<span class="badge bg-danger">BLOCKED</span>'
                        }
                    }
                },
                {
                    title: 'Action',
                    data: 'userId',
                    render: function (data) {
                        return '<button type="button" class="btn btn-primary" data-mdb-toggle="modal" data-mdb-target="#seeDetailProduct"><i class="fa-solid fa-eye"></i></button>'
                    }
                }
            ],
            columnDefs: [
                {"className": "text-end", "targets": 4},
            ],
        });
    });
</script>

</body>
</html>