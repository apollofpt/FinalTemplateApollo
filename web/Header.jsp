<%-- 
    Document   : Header
    Created on : Jul 4, 2021, 2:41:45 PM
    Author     : truon
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.html"><img src="images/logo2.png" width="314px" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="index.html">Trang chủ</a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            <p>SHOP</p>
                            <i class="fas fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                                <li><a href="shop.html">Sidebar Shop</a></li>
                                <!-- <li><a href="shop-detail.html">Shop Detail</a></li> -->
                                <li><a href="cart.html">Cart</a></li>
                                <li><a href="checkout.html">Checkout</a></li>
                                <li><a href="my-account.html">My Account</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                        </ul>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="contact-us.html">Liên hệ</a></li>
                    <li class="search-item">
                        <!-- Start Top Search -->
                        <div class="search-toggle">
                            <div class="container">
                                <div id="search-group" class="search-group close-search">
                                    <div class="toggle-target-container">
                                        <div class="toggle-target"><input type="text" class="search-text" placeholder="Search"></div>
                                    </div>
                                    <div class="search-button-container">
                                        <span class="input-group-addon search-button"><i class="fa fa-search" id="search-icon"></i></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Top Search -->                            
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
            <div id="login">
                <c:if test="${not empty USER}">
                    <ul>
                        <li><h1>Welcome, ${sessionScope.USER}</h1></li>
                        <li><a class="nav-link" href="LogOut">Đăng xuất</a></li>


                    </ul>

                </c:if>

                <c:if test="${empty USER}">
                    <a class="nav-link" href="Login">Đăng nhập</a>/<a class="nav-link" href="Register">Đăng ký</a>
                </c:if>
            </div>
        </div>
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->