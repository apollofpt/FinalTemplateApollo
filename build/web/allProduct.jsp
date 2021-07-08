<%-- 
    Document   : shop
    Created on : Jul 6, 2021, 3:33:31 PM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>List all products - DuniExchange</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/custom.css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
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
                        <a class="navbar-brand" href="index.html"><img src="images/logo.png" class="logo" alt=""></a>
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
                                    <li><a href="myAccount.jsp">My Account</a></li>
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
                        <a class="nav-link" href="login.html">Đăng nhập</a>/<a class="nav-link" href="register.html">Đăng ký</a>
                    </div>
                </div>
            </nav>
            <!-- End Navigation -->
        </header>
        <!-- End Main Top -->

        <!-- Start Top Search -->
        <div class="top-search">
            <div class="container">
                <div class="input-group">
                    <span class="input-group-addon"><i class="fa fa-search"></i></span>
                    <input type="text" class="form-control" placeholder="Search">
                    <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
                </div>
            </div>
        </div>
        <!-- End Top Search -->

        <!-- Start All Title Box -->
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Shop</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Shop</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->

        <!-- Start Shop Page  -->
        <div class="shop-box-inner">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
                        <div class="right-product-box">
                            <div class="product-item-filter row">
                                <div class="col-12 col-sm-8 text-center text-sm-left">
                                    <div class="toolbar-sorter-right">
                                        <span>Sort by </span>
                                        <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                                            <option data-display="Select">Nothing</option>
                                            <option value="1">Popularity</option>
                                            <option value="2">A → Z</option>
                                            <option value="3">Z → A</option>
                                            <option value="4">Best Trading</option>
                                        </select>
                                    </div>
                                    <p>Showing all 4 results</p>
                                </div>
                                <div class="col-12 col-sm-4 text-center text-sm-right">
                                    <ul class="nav nav-tabs ml-auto">
                                        <li>
                                            <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                                        </li>
                                        <li>
                                            <a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="product-categorie-box">
                                <div class="tab-content">
                                    <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                                        <div class="row">
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/Apollo-images/Big-images-A.png" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4><a href="product-detail.html"> ÁO PHÔNG SẶC SỠ, SUÝT NỮA THÀNH ĐỒ GIA TRUYỀN NHƯNG NAY ĐƯỢC ĐEM RA ĐỔI</a></h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho (fake Uyen Trang)</a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="new"></p>
                                                        </div>
                                                        <img src="images/img-pro-02.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/img-pro-03.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 5 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="new"></p>
                                                        </div>
                                                        <img src="images/img-pro-01.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/img-pro-02.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/img-pro-03.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/img-pro-01.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="sale"></p>
                                                        </div>
                                                        <img src="images/img-pro-02.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                <div class="products-single fix">
                                                    <div class="box-img-hover">
                                                        <div class="type-lb1">
                                                            <p class="new"></p>
                                                        </div>
                                                        <img src="images/img-pro-03.jpg" class="img-fluid1" alt="Image">
                                                        <div class="mask-icon">
                                                            <ul>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                            </ul>
                                                            <a class="cart" href="#">Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="why-text">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva"><a href="my-account.html"> Dat Ho </a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div role="tabpanel" class="tab-pane fade" id="list-view">
                                        <div class="list-view-box">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <div class="products-single fix">
                                                        <div class="box-img-hover">
                                                            <div class="type-lb1">
                                                                <p class="new"></p>
                                                            </div>
                                                            <img src="images/img-pro-01.jpg" class="img-fluid1" alt="Image">
                                                            <div class="mask-icon">
                                                                <ul>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                    <div class="why-text full-width">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                            sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                            Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94);"> Dat Ho</a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                        <a class="btn hvr-hover" href="#">Add to Cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-view-box">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <div class="products-single fix">
                                                        <div class="box-img-hover">
                                                            <div class="type-lb1">
                                                                <p class="sale"></p>
                                                            </div>
                                                            <img src="images/img-pro-02.jpg" class="img-fluid1" alt="Image">
                                                            <div class="mask-icon">
                                                                <ul>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                    <div class="why-text full-width">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                            sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                            Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94);"> Dat Ho</a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                        <a class="btn hvr-hover" href="#">Add to Cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="list-view-box">
                                            <div class="row">
                                                <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                    <div class="products-single fix">
                                                        <div class="box-img-hover">
                                                            <div class="type-lb1">
                                                                <p class="sale"></p>
                                                            </div>
                                                            <img src="images/img-pro-03.jpg" class="img-fluid1" alt="Image">
                                                            <div class="mask-icon">
                                                                <ul>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>
                                                                </ul>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                    <div class="why-text full-width">
                                                        <h4>Lorem ipsum dolor sit amet</h4>
                                                        <p>Integer tincidunt aliquet nibh vitae dictum. In turpis sapien, imperdiet quis magna nec, iaculis ultrices ante. Integer vitae suscipit nisi. Morbi dignissim risus sit amet orci porta, eget aliquam purus
                                                            sollicitudin. Cras eu metus felis. Sed arcu arcu, sagittis in blandit eu, imperdiet sit amet eros. Donec accumsan nisi purus, quis euismod ex volutpat in. Vestibulum eleifend eros ac lobortis aliquet.
                                                            Suspendisse at ipsum vel lacus vehicula blandit et sollicitudin quam. Praesent vulputate semper libero pulvinar consequat. Etiam ut placerat lectus.</p>
                                                        <p style="float: right;"><i class="fas fa-heart" ></i> 15 </p>
                                                        <div class="Avatar">
                                                            <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                                                 >
                                                            <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94);"> Dat Ho</a></p>
                                                        </div>
                                                        <p class="time">
                                                            Mon, 31/05/2021
                                                        </p>
                                                        <a class="btn hvr-hover" href="#">Add to Cart</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                        <div class="product-categori">
                            <div class="search-product">
                                <form action="#">
                                    <input class="form-control" placeholder="Search here..." type="text">
                                    <button type="submit"> <i class="fa fa-search"></i> </button>
                                </form>
                            </div>
                            <div class="filter-sidebar-left">
                                <div class="title-left">
                                    <h3>Categories</h3>
                                </div>
                                <c:forEach items="${listC}" var="lC">
                                    <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                        <a href="#" class="list-group-item list-group-item-action"> lC.  <small class="text-muted">(150) </small></a>
<!--                                        <a href="#" class="list-group-item list-group-item-action"> Điện tử  <small class="text-muted">(150) </small></a>
                                        <a href="#" class="list-group-item list-group-item-action"> Đồ gia dụng  <small class="text-muted">(150) </small></a>
                                        <a href="#" class="list-group-item list-group-item-action"> Giải trí  <small class="text-muted">(150) </small></a>
                                        <a href="#" class="list-group-item list-group-item-action"> Thực phẩm  <small class="text-muted">(150) </small></a>-->
                                    </div></c:forEach>
                                </div>

                                <div class="card bg-light mb-3">
                                    <div class="card-header bg-success text-white text-uppercase">Last product</div>
                                    <div class="card-body">
                                        <img class="img-fluid" src="images/img-pro-03.jpg" />
                                        <h5 class="card-title">${p.name}</h5>
                                    <p class="card-text">${p.title}</p>
                                    <div class="like-progress">
                                        <div class="icon-heart"><i class="fas fa-heart"></i> 20 </div>

                                    </div>
                                    <div class="Avatar">
                                        <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" 
                                             >
                                        <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94); font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;"> Dat Ho</a></p>
                                    </div>
                                    <p class="time">
                                        Mon, 31/05/2021
                                    </p>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Shop Page -->

    <!-- Start Instagram Feed  -->
    <div class="instagram-box">
        <div class="main-instagram owl-carousel owl-theme">
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-01.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-02.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-03.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-04.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-06.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-07.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-08.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-09.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="ins-inner-box">
                    <img src="images/instagram-img-05.jpg" alt="" />
                    <div class="hov-in">
                        <a href="#"><i class="fab fa-instagram"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Instagram Feed  -->


    <!-- Start Footer  -->
    <footer>
        <div class="footer-main">
            <div class="container">
                <div class="row mr-3 col-lg-5">
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Nhận tin tức</h3>
                            <form class="newsletter-box">
                                <div class="form-group">
                                    <input class="p-1" type="email" name="Email" placeholder="Email Address*" />
                                    <i class="fa fa-envelope"></i>
                                </div>
                                <button class="btn hvr-hover" type="submit">Submit</button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 col-sm-12">
                        <div class="footer-top-box">
                            <h3>Mạng xã hội</h3>
                            <p>Biết thêm về chúng tôi tại</p>
                            <ul>
                                <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-widget">
                            <h4>Về DuniExchange</h4>
                            <p>Đây là một trong web dành cho trao đổi các vật phẩm của trường FPT</p> 
                            <p>Những vật phẩm được trao đổi với nhau thông qua sự đồng ý giao dịch của 2 bên, trang web chỉ hỗ trợ tìm kiếm giao dịch, không tham gia vào quá trình giao dịch.</p>                          
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link">
                            <h4>Information</h4>
                            <ul>
                                <li><a href="#"><i class="fas fa-angle-right"></i> Về chúng tôi</a></li>
                                <li><a href="#"><i class="fas fa-angle-right"></i> Dịch vụ khách hàng</a></li>
                                <li><a href="#"><i class="fas fa-angle-right"></i> Điều khoản &amp; Điều kiện</a></li>
                                <li><a href="#"><i class="fas fa-angle-right"></i> Chính sách bảo mật</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-sm-12">
                        <div class="footer-link-contact">
                            <h4>Contact Us</h4>
                            <ul>
                                <li>
                                    <p><i class="fas fa-map-marker-alt"></i>Địa chỉ: Trường Đại học FPT Đà Nẵng, Khu đô thị FPT City, Phường Hòa Hải, Quận Ngũ Hành Sơn, TP Đà Nẵng.
                                </li>
                                <li>
                                    <p><i class="fas fa-phone-square"></i>Phone: <a href="tel:+1-888705770">+1-888 705 770</a></p>
                                </li>
                                <li>
                                    <p><i class="fas fa-envelope"></i>Email: <a href="mailto:apolloteamproject@gmail.com">apolloteamproject@gmail.com</a></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer  -->

    <!-- Start copyright  -->
    <div class="footer-copyright">
        <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
            <a href="https://html.design/">html design</a></p>
    </div>
    <!-- End copyright  -->

    <a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>


    <!-- ALL JS FILES -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- ALL PLUGINS -->
    <script src="js/jquery.superslides.min.js"></script>
    <script src="js/bootstrap-select.js"></script>
    <script src="js/inewsticker.js"></script>
    <script src="js/bootsnav.js."></script>
    <script src="js/images-loded.min.js"></script>
    <script src="js/isotope.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/baguetteBox.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery.nicescroll.min.js"></script>
    <script src="js/form-validator.min.js"></script>
    <script src="js/contact-form-script.js"></script>
    <script src="js/custom.js"></script>
    <!-- Hữu Tình - 1208.03062021 - searchbar script -->
    <script src="js/searchbar.js"></script>
</body>
</html>