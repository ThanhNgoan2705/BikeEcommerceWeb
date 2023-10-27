<!DOCTYPE html>
<html lang="en">
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
                <a class="sidenav-link" href="product.html">
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
                <a class="sidenav-link" href="address.jsp">
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
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle hidden-arrow d-flex align-items-center" href="#"
                       id="dropdownUser" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
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
<!--Main layout-->
<main class="mb-5">
    <!-- Container for demo purpose -->

    <!--Section: Content-->
    <div class="container px-4">
        <section class="">
            <div class="card shadow-0 text-center">
                <div class="card-header py-3 justify-content-center ">
                    <p class="mb-0 float-md-start">Product Lists</p>
                    <button type="button" class="btn float-md-end" data-mdb-toggle="modal"
                            data-mdb-target="#addProductForm">
                        <i class="fa-solid fa-plus"> Add Product</i>
                    </button>
                </div>
                <div class="card-body">

                    <!-- Button trigger modal -->

                    <div class="table-responsive">
                        <table class="table text-nowrap table-borderless table-striped table-hover align-middle mb-0 bg-white">
                            <thead>
                            <tr>
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
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal"
                                            data-mdb-target="#editProductForm">
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
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal" data-mdb-target="#editProductForm">
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
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal" data-mdb-target="#editProductForm">
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
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal" data-mdb-target="#editProductForm">
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
                                <td class="align-content-center">
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn alert-success" data-mdb-toggle="modal" data-mdb-target="#editProductForm">
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
    <!--    edit product form-->
    <div class="modal fade" id="editProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Edit Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="editNameProduct" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="editNameProduct" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <!--                        list category-->
                        <div class="col-md-6">
                            <label for="editCategoryname" class="form-label">Category</label>
                            <select class="form-select" id="editCategoryname" required>
                                <option selected disabled value="">Xe Điện</option>
                                <option>Xe Máy Điện</option>
                                <option>Xe Đạp Điện</option>
                                <option>Xe Đạp Thể Thao</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--                        list suppliers-->
                        <div class="col-md-6">
                            <label for="editSupplierName" class="form-label">Supplier</label>
                            <select class="form-select" id="editSupplierName" required>
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
                            <label for="editBrandName" class="form-label">Brand</label>
                            <select class="form-select" id="editBrandName" required>
                                <option selected disabled value="">Pega</option>
                                <option>JVC</option>
                                <option>Galaxy</option>
                                <option>Yadea</option>
                            </select>
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
                            <label for="editColorKind" class="form-label">Color</label>
                            <input type="text" class="form-control"
                                   id="editColorKind">
                        </div>
                        <div class="col-md-3 float-end">
                            <label for="editWheelSize" class="form-label">Wheel Size</label>
                            <input type="text" class="form-control"
                                   id="editWheelSize" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label for="editMaterial" class="form-label">Material</label>
                            <input type="text" class="form-control" id="editMaterial">
                        </div>
                        <div class="col-md-6">
                            <label for="editWarranty" class="form-label">Warranty</label>
                            <input type="text" class="form-control" id="editWarranty">
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
                        <button class="btn btn-secondary w-25" type="submit">Edit Product</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
    <!--    end edit product form-->
<!--    add product form-->
    <div class="modal fade" id="addProductForm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="container-lg modal-dialog">
            <div class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <form class="row g-3 needs-validation" novalidate>
                        <div class="modal-title">
                            <h2 class="text-start text-black w-50">Add Product</h2>
                        </div>
                        <div class="col-md-12">
                            <label for="nameProduct" class="form-label">Product Name</label>
                            <input type="text" class="form-control" id="nameProduct" value="Mark" required>
                            <div class="valid-feedback">
                                Looks good!
                            </div>
                        </div>
                        <!--                        list category-->
                        <div class="col-md-6">
                            <label for="categoryName" class="form-label">Category</label>
                            <select class="form-select" id="categoryname" required>
                                <option selected disabled value="">Xe Điện</option>
                                <option>Xe Máy Điện</option>
                                <option>Xe Đạp Điện</option>
                                <option>Xe Đạp Thể Thao</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <!--                        list suppliers-->
                        <div class="col-md-6">
                            <label for="supplierName" class="form-label">Supplier</label>
                            <select class="form-select" id="supplierName" required>
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
                            <label for="brandName" class="form-label">Brand</label>
                            <select class="form-select" id="brandName" required>
                                <option selected disabled value="">Pega</option>
                                <option>JVC</option>
                                <option>Galaxy</option>
                                <option>Yadea</option>
                            </select>
                            <div class="invalid-feedback">
                                Please select a valid state.
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-outline">
                                <textarea class="form-control" id="description" rows="4"></textarea>
                                <label class="form-label" for="description">Description</label>
                            </div>

                        </div>
                        <div class="col-md-6">
                            <label for="colorKind" class="form-label">Color</label>
                            <input type="text" class="form-control"
                                   id="colorKind">
                        </div>
                        <div class="col-md-3 float-end">
                            <label for="validationCustom12" class="form-label">Wheel Size</label>
                            <input type="text" class="form-control"
                                   id="validationCustom12" required>
                            <div class="invalid-feedback">
                                Please provide a valid zip.
                            </div>
                        </div>
                        <div class="col-md-3">
                            <label for="material" class="form-label">Material</label>
                            <input type="text" class="form-control" id="material">
                        </div>
                        <div class="col-md-6">
                            <label for="Warranty" class="form-label">Warranty</label>
                            <input type="text" class="form-control" id="Warranty">
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
                                        <label class="form-label text-white m-1" for="customFile1">Choose file</label>
                                        <input type="file" class="form-control d-none" id="customFile1"/>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <button class="btn btn-secondary w-25" type="submit">Add Product</button>
                    </form>

                </div>
            </div>
        </div>
    </div>
</main>


<!--Footer-->
<footer></footer>
<!--Footer-->

<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
<script src="assert/js/chart.min.js"></script>
</body>
</html>