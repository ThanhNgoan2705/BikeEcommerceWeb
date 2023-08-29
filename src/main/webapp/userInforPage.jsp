<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no, viewport-fit=cover">

    <base target="_parent">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
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
    <link rel="stylesheet" href="assets/css/style.css">

</head>
<body>
<!-- Navbar -->
<nav class="navbar navbar-expand-md navbar-light bg-light">
    <!-- Container wrapper -->
    <div class="container-lg">
        <!-- Toggle button -->
        <button
                class="navbar-toggler"
                type="button"
                data-mdb-toggle="collapse"
                data-mdb-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars"></i>
        </button>

        <!-- Collapsible wrapper -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Navbar brand -->
            <a class="navbar-brand mt-2 mt-lg-0" href="#">
                <img
                        src="https://mdbcdn.b-cdn.net/img/logo/mdb-transaprent-noshadows.webp"
                        height="15"
                        alt="MDB Logo"
                        loading="lazy"
                />
            </a>
            <!-- Left links -->
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Products</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
            <!-- Left links -->
        </div>
        <!-- Collapsible wrapper -->

        <!-- Right elements -->
        <div class="d-flex align-items-center">
            <!-- Icon -->
            <a class="text-reset me-3" href="#">
                <i class="fas fa-shopping-cart"></i>
            </a>
            <!-- Avatar -->
            <div class="dropdown">
                <a
                        class="dropdown-toggle d-flex align-items-center hidden-arrow"
                        href="#"
                        id="navbarDropdownMenuAvatar"
                        role="button"
                        data-mdb-toggle="dropdown"
                        aria-expanded="false"
                >
                    <img
                            src="https://mdbcdn.b-cdn.net/img/new/avatars/2.webp"
                            class="rounded-circle"
                            height="25"
                            alt="Black and White Portrait of a Man"
                            loading="lazy"
                    />
                </a>
                <ul
                        class="dropdown-menu dropdown-menu-end"
                        aria-labelledby="navbarDropdownMenuAvatar"
                >
                    <li>
                        <a class="dropdown-item" href="#">My profile</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="#">Settings</a>
                    </li>
                    <li>
                        <a class="dropdown-item" href="#">Logout</a>
                    </li>
                </ul>
            </div>
            <a class="text-bg-primary me-3 ml-2" href="#" style="margin-left: 10px">
                <i class="fas fa-phone-flip"></i>
                Hỗ Trợ Khách Hàng
            </a>
        </div>
        <!-- Right elements -->
    </div>
    <!-- Container wrapper -->
</nav>
<!-- Navbar -->
<!--Main Navigation-->
<div class="container-xl mt-lg-5">
    <div class="row ">
        <div class="col-3 mb-3">
            <div class="list-group list-group-light">
                <div class="list-group-item list-group-item-action  px-3 border-0">
                    <div class="d-flex align-items-center">
                       <img src="assets/images/account-full.svg" width="60px" height="60px" alt="account"><span>Hi, User</span>
                    </div>
                </div>
                <a class="list-group-item list-group-item-action active px-3 border-0" id="user-information"
                   href="userInforPage.jsp">
                    <i class="fa-solid fa-user"></i><span>User Information</span>
                </a>
                <a class="list-group-item list-group-item-action px-3 border-0" id="list-messages-list"
                 href="changePassPage.jsp" >
                    <i class="fa-solid fa-lock"></i><span>Change Password</span></a>
                <a class="list-group-item list-group-item-action px-3 border-0" id="purchases-history"
                   href="purchasesHistoryPage.jsp" >
                    <i class="fa-solid fa-bag-shopping"></i><span>Purchases History</span>
                </a>
                <a class="list-group-item list-group-item-action px-3 border-0" id="favorite-list"
                    href="favouritList.jsp">
                   <i class="fa-solid fa-heart"></i> <span>Favourite List</span>
                </a>
                <button type="button" class="btn btn-primary">Log Out</button>
            </div>
        </div>
        <div class="col-6">
                <div  id="infoUser">
                    <form>
                        <div class="mb-3">
                            <label for="nameInput" class="form-label">Full Name</label>
                            <input type="text" class="form-control" id="nameInput" aria-describedby="nameHepl" placeholder="Hoang Thanh Ngoan" >
                            <div id="nameHepl" class="form-text">Please enter your full name</div>
                        </div>
                        <div class="mb-3">
                            <label for="birthdayInput" class="form-label">Birthday</label>
                            <input type="date" class="form-control" id="birthdayInput" aria-describedby="birthdayHelp" >
                            <div id="birthdayHelp" class="form-text">Please enter your birthday</div>
                        </div>
                        <div class="mb-3">
                            <label for="emailInput" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="emailInput" aria-describedby="emailHelp" placeholder="thanhngoan@gmail.com">
                            <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                        </div>
                        <div class="mb-3">
                            <label for="phoneInput" class="form-label">Phone Number</label>
                            <input type="text" class="form-control" id="phoneInput" aria-describedby="phoneHelp" placeholder="0326497648">
                            <div id="phoneHelp" class="form-text">Please enter your phone number</div>
                        </div>
                    </form>
                </div>
        </div>
    </div>
</div>

<!--Footer-->
<footer></footer>
<!--Footer-->

<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/js/mdb.min.js"></script>
<script type="text/javascript"
        src="https://mdbootstrap.com/api/snippets/static/download/MDB5-Pro-Advanced_6.4.1/plugins/js/all.min.js"></script>
</body>
</html>