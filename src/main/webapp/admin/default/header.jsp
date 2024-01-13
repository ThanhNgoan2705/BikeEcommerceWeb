<%--
  Created by IntelliJ IDEA.
  User: Chan Chan
  Date: 11/27/2023
  Time: 11:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <a class="sidenav-link" href="/admin/product.jsp">
                    <i class="fas fa-bicycle fa-fw me-3"></i><span>Product</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/categories">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Category</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/brand">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Brand</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/supplier.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Supplier</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/imageProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Image Product</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/imageProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Image Slider</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/color.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Color</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/colorProduct.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Color Product Image</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/discount.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>discount</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/slider.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>Slider</span></a>
            </li>


            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Manage Account</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/user.jsp">
                    <i class="fas fa-plus fa-fw me-3"></i><span>User</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/address.jsp">
                    <i class="fas fa-database fa-fw me-3"></i><span>Address</span></a>
            </li>


            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Manage Order</span>
            <li class="sidenav-item pt-3">
                <span class="sidenav-subheading text-muted text-uppercase fw-bold">Admin</span>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/order.jsp">
                    <i class="fas fa-money-bill fa-fw me-3"></i><span>Order</span></a>
            </li>
            <li class="sidenav-item">
                <a class="sidenav-link" href="/admin/invoice.jsp">
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
                    <a class="nav-link me-3 me-lg-0 dropdown-toggle hidden-arrow" href="#" id="dropdownNotification"
                       role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-bell link-secondary"></i>
                        <span class="badge rounded-pill badge-notification bg-danger">1</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownNotification">
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
                <c:if test="${haveUser}">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                       id="dropdownUser" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                        <span class="d-none d-sm-inline mx-1 text-dark">hi,${userName}</span>
                        <img src="https://mdbootstrap.com/img/new/avatars/2.jpg" class="rounded-circle" height="22"
                             alt="Avatar"
                             loading="lazy"/>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="dropdownUser">
                        <li><a class="dropdown-item " href="#">My profile</a></li>
                        <li><a class="dropdown-item" href="#">Settings</a></li>
                        <li><a class="dropdown-item" href="#">Logout</a></li>
                    </ul>
                </li>
                </c:if>
                <c:if test="${!haveUser}">
                <li class="nav-item">
                    <a class="nav-link" href="/login">
                        <i class="fas fa-user-circle fa-lg"></i>
                    </a>
                </li>
                </c:if>
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
                            <h1 class="">Product</h1>
                            <!-- Breadcrumb -->
                            <nav class="d-flex justify-content-center justify-content-lg-start">
                                <h6 class="mb-0">
                                    <a href="" class="text-muted">Home</a>
                                    <span>/</span>
                                    <a href="" class="text-muted">Analytics</a>
                                    <span>/</span>
                                    <a href="product.html" class="text-muted"><u>Product</u></a>
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