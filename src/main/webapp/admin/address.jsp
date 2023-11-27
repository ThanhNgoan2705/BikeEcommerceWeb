<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover">

    <base target="_parent">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&amp;display=swap">
    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/css/mdb.min.css">
    <link rel="stylesheet"
          href="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/css/all.min.css">
    <style>body {
        background-color: hsl(0, 0%, 97%);
    }

    @media (min-width: 1400px) {
        main,
        header,
        #main-navbar {
            padding-left: 240px;
        }
    }</style>
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
    <link rel="stylesheet" href="assert/css/home.css">


</head>
<body>
<!--Main Navigation-->
<header>
    <!-- Sidenav -->
    <nav id="main-sidenav" class="sidenav sidenav-sm shadow-1" data-mdb-hidden="false" data-mdb-accordion="true">
        <a class="ripple d-flex justify-content-center pt-4 pb-2" href="#!" data-mdb-ripple-color="primary">
            <img id="MDB-logo" src="https://mdbcdn.b-cdn.net/wp-content/uploads/2018/06/logo-mdb-jquery-small.webp"
                 alt="MDB Logo" draggable="false"/>
        </a>

        <hr class="hr">

        <ul class="sidenav-menu px-2 pb-5">
            <li class="sidenav-item">
                <a class="sidenav-link" href="">
                    <i class="fas fa-tachometer-alt fa-fw me-3"></i><span>Overview</span></a>
            </li>

            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Manage Item</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="product.jsp">
                    <i class="fas fa-bicycle fa-fw me-3"></i><span>Product</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="category.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Category</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="brand.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Brand</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="supplier.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Supplier</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="imageProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Image Product</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="imageProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Image Slider</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="color.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Color</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="colorProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Color Product Image</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="discount.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>discount</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="slider.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Slider</span></a>
            </li>


            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Manage Account</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="user.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>User</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="address.html">
                    <i class="fas fa-database fa-fw me-3"></i><span>Address</span></a>
            </li>


            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Manage Order</span>
            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Admin</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="order.jsp">
                    <i class="fas fa-money-bill fa-fw me-3"></i><span>Order</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="invoice.jsp">
                    <i class="fas fa-file-contract fa-fw me-3"></i><span>invoice</span></a>
            </li>

        </ul>
    </nav>
    <!-- Sidenav -->

    <!-- Navbar -->
    <nav id="main-navbar" class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow-1">
        <!-- Container wrapper -->
        <div class="container-fluid">
            <!-- Toggler -->
            <button data-mdb-toggle="sidenav" data-mdb-target="#main-sidenav"
                    class="btn shadow-0 p-0 me-3 d-block d-xxl-none" aria-controls="#main-sidenav" aria-haspopup="true">
                <i class="fas fa-bars fa-lg"></i>
            </button>

            <!-- Search form -->
            <form class="d-none d-md-flex input-group w-auto my-auto">
                <input id="search-focus" autocomplete="off" type="search" class="form-control rounded"
                       placeholder='Search (ctrl + alt to focus)' style="min-width: 225px"/>
                <span class="input-group-text border-0"><i class="fas fa-search text-secondary"></i></span>
            </form>

            <!-- Right links -->
            <ul class="navbar-nav ms-auto d-flex flex-row">
                <!-- Notification dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdownMenuLink"
                       role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-bell link-secondary"></i>
                        <span class="badge rounded-pill badge-notification bg-danger">1</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Some news</a></li>
                        <li><a class="dropdown-item" href="#">Another news</a></li>
                        <li>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </li>
                    </ul>
                </li>

                <!-- Icon dropdown -->
                <li class="nav-item dropdown">
                    <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="navbarDropdown"
                       role="button"
                       data-mdb-toggle="dropdown" aria-expanded="false">
                        <i class="flag flag-united-kingdom m-0"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-kingdom flag"></i>English
                                <i class="fa fa-check text-success ms-2"></i></a>
                        </li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-poland"></i>Polski</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-china"></i>中文</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-japan"></i>日本語</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-germany"></i>Deutsch</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-france"></i>Français</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-spain"></i>Español</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-russia"></i>Русский</a>
                        </li>
                        <li>
                            <a class="dropdown-item" href="#"><i class="flag flag-portugal"></i>Português</a>
                        </li>
                    </ul>
                </li>

                <!-- Avatar -->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                       id="navbarDropdownMenuLink" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                        <img src="https://mdbootstrap.com/img/new/avatars/2.jpg" class="rounded-circle" height="22"
                             alt="Avatar"
                             loading="lazy"/>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item " href="#">My profile</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Logout</a></li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- Container wrapper -->
    </nav>
    <!-- Navbar -->

    <!-- Heading -->
    <section class="mb-5 mb-lg-8 text-center text-md-start">
        <!-- Background gradient -->
        <div class="p-5" style="height: 200px;
                            background: linear-gradient(
                            to right,
                            hsl(209, 42.2%, 65%),
                            hsl(209, 42.2%, 85%)
                            );">
        </div>
        <!-- Background gradient -->

        <div class="container px-4">
            <div class="card shadow-0 h-100" style="
                                              margin-top: -100px;
                                              ">
                <div class="card-body py-5 px-5">
                    <div class="row gx-lg-4 align-items-center">
                        <div class="col-lg-6 mb-4 mb-lg-0 text-center text-lg-start">
                            <h1 class="">Brand</h1>
                            <!-- Breadcrumb -->
                            <nav class="d-flex justify-content-center justify-content-lg-start">
                                <h6 class="mb-0">
                                    <a href="" class="text-muted">Home</a>
                                    <span>/</span>
                                    <a href="" class="text-muted">Analytics</a>
                                    <span>/</span>
                                    <a href="product.jsp" class="text-muted"><u>Product</u></a>
                                </h6>
                            </nav>
                            <!-- Breadcrumb -->
                        </div>

                        <div class="col-lg-6 text-center text-lg-end">
                            <button type="button" class="btn btn-link me-1 mb-4 px-2 px-md-3"
                                    data-ripple-color="primary">
                                Customize<i class="fas fa-cogs ms-2"></i>
                            </button>
                            <button type="button" class="btn btn-link mb-4 px-2 px-md-3" data-ripple-color="primary">
                                Export<i class="fas fa-download ms-2"></i>
                            </button>

                            <div class="row justify-content-center justify-content-lg-end">
                                <div class="col-md-4 mb-4 mb-md-0">
                                    <select class="select">
                                        <option value="1">Today</option>
                                        <option value="2">Yesterday</option>
                                        <option value="3" selected>Last 7 days</option>
                                        <option value="4">Last 28 days</option>
                                        <option value="5">Last 90 days</option>
                                    </select>
                                    <label class="form-label select-label">Date</label>
                                </div>

                                <div class="col-md-4">
                                    <div class="form-outline datepicker" data-mdb-inline="true">
                                        <input type="text" class="form-control" id="exampleDatepicker1"
                                               data-toggle="datepicker"
                                               value="Custom date"/>
                                        <label for="exampleDatepicker1" class="form-label">Date</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>
    <!-- Heading -->


</header>
<!--Main Navigation-->
<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->

    <!--Section: Content-->
    <div class="container px-4">
        <section class="">
            <div class="card shadow-0 text-center">
                <div class="card-header py-3 justify-content-center ">
                    <p class="mb-0 float-md-start">Brand Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addBrandForm">
                        <i class="fa-solid fa-plus"> Add Brand</i>
                    </button>
                </div>
                <div class="card-body">

                    <!-- Button trigger modal -->

                    <div class="table-responsive">
                        <table class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>email</th>
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
                                            <p class="fw-bold mb-1">BrandName</p>
                                            <p class="text-muted mb-0">Việt Nam</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span> 02354659758</span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">brandname@gmail.com</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetail">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editBrandForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/ethereum.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">BrandName</p>
                                            <p class="text-muted mb-0">Việt Nam</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span> 02354659758</span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">brandname@gmail.com</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetail">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editBrandForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
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
                                            <p class="fw-bold mb-1">BrandName</p>
                                            <p class="text-muted mb-0">Việt Nam</p>
                                        </div>
                                    </div>
                                </td>
                                <td>

                                    <span> 02354659758</span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">brandname@gmail.com</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetail">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editBrandForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="d-flex align-items-center">
                                        <img src="https://mdbootstrap.com/img/Photos/dashboard/crypto/avalanche.png"
                                             class="rounded-circle" alt="" style="width: 45px; height: 45px"/>
                                        <div class="ms-3">
                                            <p class="fw-bold mb-1">BrandName</p>
                                            <p class="text-muted mb-0">Việt Nam</p>
                                        </div>
                                    </div>
                                </td>
                                <td>

                                    <span> 02354659758</span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">brandname@gmail.com</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetail">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editBrandForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
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
                                            <p class="fw-bold mb-1">BrandName</p>
                                            <p class="text-muted mb-0">Việt Nam</p>
                                        </div>
                                    </div>
                                </td>
                                <td>
                                    <span> 02354659758</span>
                                </td>
                                <td>
                                    <p class="fw-normal mb-1">brandname@gmail.com</p>
                                </td>
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn" data-mdb-toggle="modal"
                                            data-mdb-target="#seeDetail">
                                        <i class="fa-solid fa-eye"></i>
                                    </button>
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editBrandForm">
                                        <i class="fa-solid fa-pencil"></i>
                                    </button>
                                    <button type="button" class="btn alert-danger" data-mdb-toggle="modal">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="card-footer float-md-end ">
                    <nav aria-label="Page navigation example ">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </section>

    </div>

    <!--section pagination-->

    <!-- see detail Brand -->
    <!--seeDetailProduct-->
    <div class="modal fade " id="seeDetail" tabindex="-1"
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
                                            <li><span> <b>Tên Thương Hiệu:</b> </span> <span>Catani</span></li>
                                            <li><span> <b>Nơi Sản Xuất:</b> </span> <span>Viêt Nam</span></li>
                                            <li><span> <b>Địa Chỉ:</b> </span> <span>hưng yên, Việt Nam</span></li>
                                            <li><span> <b>HotLine liên hệ:</b> </span> <span>03612649151</span></li>
                                        </ul>
                                        <div class="col-md-6">
                                            <img width="200" height="200"
                                                 src="https://catani-bicycle.com/wp-content/uploads/2022/04/Header-Logo-Black-and-White.png"
                                                 class="header_logo header-logo" alt="Catani Bicycle">
                                        </div>

                                    </div>
                                    <h2><span><b>Mô Tả Chi Tiết</b></span></h2>
                                    <div class="d-flex justify-content-center ">
                                        <p class="text-muted mb-0">
                                            Thành lập vào năm 1970 bởi Antonio Catani tại thành phố Cesena, Ý. Xuất phát
                                            điểm của thương hiệu xe đạp nổi tiếng này là một hãng xe sản xuất những
                                            chiếc xe đạp đua chuyên nghiệp cho các tay đua và người người chơi xe lâu
                                            năm.

                                            Dần dần với sự phát triển của xã hội và nhu cầu ngày càng cao của người tiêu
                                            dùng, hãng đã quyết định làm đa dạng hơn các sản phẩm của mình. Có thể kể
                                            đến một dòng xe nổi tiếng khác của thương hiệu này như Xe Đạp Touring Catani
                                            CA-2.1 700c. Ngoài ra hãng cũng đồng thời sản xuất thêm các dòng xe đạp địa
                                            hình, và cả xe đạp điện,….

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
    <!-- see detail Brand -->

    <!--    add Brand form-->
    <div class="modal fade" id="addBrandForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Brand</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="addNameBrand" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="addNameBrand" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addSupplier" class="form-label">Supplier</label>
                            <!--                            // get list supplier to show option-->
                            <select class="form-select" id="addSupplier" required>
                                <option selected disabled value="">Việt Nam</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                                <option>Đài Loan</option>
                                <option>Nhật Bản</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="addAddress" class="form-label">Địa Chỉ</label>
                            <input type="text" class="form-control"
                                   id="addAddress">
                        </div>
                        <div class="col-md-6">
                            <label for="addHotline" class="form-label">Hotline </label>
                            <input type="text" class="form-control" id="addHotline">
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control" id="addDescription" rows="4"></textarea>
                                <label class="form-label" for="addDescription">Description</label>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <!--Image-->
                            <div>
                                <div class="mb-4 d-flex justify-content-center">
                                    <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg"
                                         alt="example placeholder" style="width: 250px;"/>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="btn btn-primary btn-rounded">
                                        <label class="form-label text-white m-1" for="addImage">Choose file</label>
                                        <input type="file" class="form-control d-none" id="addImage"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <button class="btn btn-primary w-25 h-25 justify-content-sm-center" type="submit">Add Brand
                        </button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    -->
    <!--    edit Brand form-->
    <div class="modal fade" id="editBrandForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Brand</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="editNameBrand" class="form-label">Brand Name</label>
                            <input type="text" class="form-control" id="editNameBrand" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="editSupplier" class="form-label">Supplier</label>
                            <!--                            // get list supplier to show option-->
                            <select class="form-select" id="editSupplier" required>
                                <option selected disabled value="">Việt Nam</option>
                                <option>Trung Quốc</option>
                                <option>Thái Lan</option>
                                <option>Đài Loan</option>
                                <option>Nhật Bản</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <label for="editAddress" class="form-label">Địa Chỉ</label>
                            <select class="form-select" id="editAddress" required>

                            </select>
                        </div>
                        <div class="col-md-6">
                            <label for="editHotline" class="form-label">Hotline </label>
                            <input type="text" class="form-control" id="editHotline">
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control" id="editDescription" rows="4"></textarea>
                                <label class="form-label" for="editDescription">Description</label>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <!--Image-->
                            <div>
                                <div class="mb-4 d-flex justify-content-center">
                                    <img src="https://mdbootstrap.com/img/Photos/Others/placeholder.jpg"
                                         alt="example placeholder" style="width: 250px;"/>
                                </div>
                                <div class="d-flex justify-content-center">
                                    <div class="btn btn-primary btn-rounded">
                                        <label class="form-label text-white m-1" for="editImage">Choose file</label>
                                        <input type="file" class="form-control d-none" id="editImage"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <button class="btn btn-primary w-25 h-25 justify-content-sm-center" type="submit">Submit
                        </button>

                    </form>

                </div>
            </div>
        </div>
    </div>
    -->
</main>


<!--Footer-->
<footer></footer>
<!--Footer-->

<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
<script src="assert/js/chart.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    // load danh sách địa chỉ vào dropdown
    $(document).ready(function () {
        $.ajax({
            url: "vietnam.json",
            type: "GET",
            dataType: "application/json",
            success: function (data) {
                var options = data.options;
                var selectBox = document.getElementById("addAddress");
                for (var i = 0; i < options.length; i++) {
                    var option = ("<option>" + options[i].name + "</option>")
                    selectBox.append(option);
                }
            },
            error:function (){
                alert("Failed to load provinces");
            }
        });
    });
</script>

</body>
</html>