<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8"  language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Navigation -->
<header>

    <!-- Navbar -->
    <nav class="navbar fixed-top navbar-expand-lg  navbar-light scrolling-navbar white">
        <div class="container">
           <a href="index.jsp"><img src="mdb/img/overlays/logo.png" width="200px" height="70px" alt="logo"></a>
            <h1 class="title">
                <span>Xe Điện Long Vũ</span>
                <span style="font-size: 25px">Uy Tín, Chất Lượng </span>
            </h1>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
                    aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">

                <span class="navbar-toggler-icon"></span>

            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent-4">

                <ul class="navbar-nav ml-auto">

                    <li class="nav-item ml-3">

                        <a class="nav-link dark-grey-text font-weight-bold" href="#"><i class="fas fa-shopping-cart blue-text"></i>
                            Cart</a>

                    </li>

                    <li class="nav-item dropdown ml-3">

                        <a class="nav-link dropdown-toggle dark-grey-text font-weight-bold" id="userAccount"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user blue-text"></i>
                            Profile </a>

                        <div class="dropdown-menu dropdown-menu-right dropdown-cyan" aria-labelledby="userAccount">

                            <a class="dropdown-item waves-effect waves-light" href="logIn.jsp">Log In</a>

                            <a class="dropdown-item waves-effect waves-light" href="../register.jsp">Sign Up</a>

                        </div>

                    </li>

                </ul>

            </div>
        </div>

    </nav>
    <!-- Navbar -->

</header>
<!-- Navigation -->
