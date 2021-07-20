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
                <a class="navbar-brand" href="HomeServlet"><img src="images/logo2.png" width="314px" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="HomeServlet">Trang chủ</a></li>
                    <li class="dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                            <p>SHOP</p>
                            <i class="fas fa-caret-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="AllProductServlet">All Product</a></li>
                            <!-- <li><a href="shop-detail.html">Shop Detail</a></li> -->
                            <li><a href="cart.html">Cart</a></li>
                            <li><a href="checkout.html">Checkout</a></li>
                                <c:if test="${currentAccount != null}">
                                <li><a href="MyAccountServlet">My Account</a></li>
                                </c:if>
                            <li><a href="wishlist.html">Wishlist</a></li>
                        </ul>
                    </li>

                    <c:if test="${not empty USER}">
                        <c:if test="${currentAccount.isAdmin == 'true'}">
                            <li class="dropdown">
                                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                    <p>MANAGER</p>
                                    <i class="fas fa-caret-down"></i>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="managerAccount">Account</a></li>
                                    <li><a href="managerPost">Post</a></li>
                                    <li><a href="checkout.html">Category</a></li>
                                    <li><a href="wishlist.html">Exchange Post</a></li>
                                </ul>
                            </li>                        
                        </c:if>                        
                    </c:if>
                    <c:if test="${currentAccount != null}">
                        <li class="dropdown " >
                            <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                                <p><i class="fas fa-bell"></i></p>
                                    <c:if test="${not empty listAllExchangeStateEqualZeroByID}">
                                    <span class="badge badge-warning">New</span>
                                      </c:if>
                            </a>
                                <!--tìm ra id của second exchange post-->
                            <ul class="dropdown-menu" style="width: 300px !important">
                                <c:forEach items="${listAllExchangeStateEqualZeroByID}" var="i">     
                                        <c:forEach items="${listAllPostInHomePage}" var="o">
                                            <c:if test="${o.postID == i.firstPostID}">
                                                <c:set var="firstPostTitle" value="${o.postTitle}"></c:set>
                                                <c:forEach items="${listAllPostInHomePage}" var="n">
                                                    <c:if test="${n.postID == i.secondPostID}">
                                                        <c:forEach items="${listAccount}" var="k">
                                                            <c:if test="${k.accountID == n.accountID}">
                                                                <li style="color:white">
                                                                 <a><span style="font-weight: bold">${k.userFullname}</span> muốn đổi <span style="font-weight: bold">${n.postTitle}</span> lấy <span style="font-weight: bold"><c:out value="${firstPostTitle}"></c:out></span> với bạn!!
                                                                     <button type="button" class="btn btn-outline-warning" onclick="window.location.href = 'AccpetExchangeServlet?exchangeID=${i.exchangeID}';">Accept</button>
                                                                        <button type="button" class="btn btn-outline-danger" onclick="window.location.href = 'DeleteExchangeServlet?exchangeID=${i.exchangeID}';">Deny</button>
                                                                 </a> 
                                                             </li>
                                                             </c:if>
                                                        </c:forEach>                                           
                                                    </c:if>
                                                </c:forEach>
                                                <!--<script>console.log(firstPostTitle)</script>-->
                                            </c:if>
                                            
                                    </c:forEach>
                                </c:forEach>
                            </ul>                                              
                        </li>
                    </c:if>




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
                    <a class="nav-link" href="Login">Đăng nhập</a>/<a class="nav-link" href="validate">Đăng ký</a>
                </c:if>
            </div>
        </div>
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->
