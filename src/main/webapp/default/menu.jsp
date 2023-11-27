<%--
  Created by IntelliJ IDEA.
  User: Chan
  Date: 10/5/2023
  Time: 10:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java"  pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Mega menu -->
<div class="container mt-lg-5 pt-5">

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-dark primary-color mt-5">

        <!-- Navbar brand -->
        <a class="font-weight-bold white-text mr-4" href="/home">Home</a>

        <!-- Collapse button -->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent1"
                aria-controls="navbarSupportedContent1" aria-expanded="false" aria-label="Toggle navigation"><span
                class="navbar-toggler-icon"></span></button>

        <!-- Collapsible content -->
        <div class="collapse navbar-collapse" id="navbarSupportedContent1">

            <!-- Links -->
            <ul class="navbar-nav mr-auto">

                <li class="nav-item "><a class="nav-link" href="/product">Product</a></li>
                <li class="nav-item "><a class="nav-link" href="aboutUs.jsp">About Us</a></li>
                <li class="nav-item "><a class="nav-link" href="contact.jsp">Contact</a></li>
            </ul>
            <!-- Links -->

            <!-- Search form -->
            <form class="search-form" role="search">

                <div class="form-group md-form my-0 waves-light">

                    <input type="text" class="form-control" placeholder="Search">

                </div>

            </form>

        </div>
        <!-- Collapsible content -->

    </nav>
    <!-- Navbar -->

</div>
<!-- Mega menu -->

