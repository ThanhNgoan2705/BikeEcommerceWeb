<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Navigation -->
<header>
    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg navbar-light scrolling-navbar white">
        <div class="container-fluid grid" style="--bs-columns: 10; --bs-gap: 1rem;">
            <!-- Brand -->
            <div class="g-col-4">
                <a href="home"><img src="mdb/img/overlays/logo.png" width="200px" height="70px" alt="logo"></a>
            </div>
            <div class="g-col-6">
                <h1 class="title">
                    <span lang="vi">Xe Điện Long Vũ</span>
                    <span lang="vi" style="font-size: 25px">Uy Tín, Chất Lượng </span>
                </h1>
            </div>
            <!-- Collapse -->
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
                    aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="g-col-2 collapse navbar-collapse" id="navbarSupportedContent-4">

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item ml-3">

                        <a class="nav-link dark-grey-text font-weight-bold" href="/user/getCart"><i
                                class="fas fa-shopping-cart blue-text"></i>
                            Cart</a>

                    </li>

                        <li class="nav-item dropdown ml-3">
                            <c:if test='${not haveUser}'>
                                <a class="nav-link dropdown-toggle dark-grey-text font-weight-bold" id="userAccount"
                                   data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                        class="fas fa-user blue-text"></i> Profile </a>

                                <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="userAccount">

                                    <a class="dropdown-item waves-effect waves-light" href="login">Log In</a>

                                    <a class="dropdown-item waves-effect waves-light" href="register">Sign Up</a>

                                </div>
                            </c:if>
                            <c:if test='${haveUser}'>
                            <a class="nav-link dropdown-toggle dark-grey-text font-weight-bold" id="userAccount"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
                                    class="fas fa-user blue-text"></i>
                                Welcome,
                                    ${userName}! </a>

                            <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="userAccount">

                                <a class="dropdown-item waves-effect waves-light" href="user">Profile</a>
                                <a class="dropdown-item waves-effect waves-light" href="logout">Log Out</a>

                            </div>
                        </c:if>
                        </li>

                </ul>
            </div>
        </div>
    </nav>
    <!-- Navbar -->
</header>
<!-- Navigation -->
