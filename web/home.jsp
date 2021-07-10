<%-- 
    Document   : home
    Created on : Jun 23, 2021, 12:23:10 AM
    Author     : truon
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <!-- Basic -->

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>DuniExchange - nền tảng trao đổi sảm phẩm</title>
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

        <!-- lastestPost -->
        <link rel="stylesheet" href="css/lastestPost.css">
        <!-- topLikePost -->
        <link rel="stylesheet" href="css/topLikePost.css">
        <!-- The All Post -->
        <link rel="stylesheet" href="css/theAllPost.css">
        <!-- The Exchanged Post -->
        <link rel="stylesheet" href="css/theExchangedPost.css">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>
        <jsp:include page="Header.jsp"></jsp:include>

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

            <!-- Start Slider -->
            <div id="slides-shop" class="cover-slides">
                <ul class="slides-container">
                    <li class="text-center">
                        <img src="images/banner-01.jpg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> DuniExchange</strong></h1>
                                    <p class="m-b-40">Hope you have best time with us <br>Click button below.</p>
                                    <p><a class="btn hvr-hover" href="#">Exchange Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="text-center">
                        <img src="images/banner-02.jpg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> DuniExchange</strong></h1>
                                    <p class="m-b-40">Hope you have best time with us <br>Click button below.</p>
                                    <p><a class="btn hvr-hover" href="#">Exchange Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="text-center">
                        <img src="images/banner-03.jpg" alt="">
                        <div class="container">
                            <div class="row">
                                <div class="col-md-12">
                                    <h1 class="m-b-20"><strong>Welcome To <br> DuniExchange</strong></h1>
                                    <p class="m-b-40">Hope you have best time with us <br>Click button below.</p>
                                    <p><a class="btn hvr-hover" href="#">Exchange Now</a></p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
                <div class="slides-navigation">
                    <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
                    <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
                </div>
            </div>
            <!-- End Slider -->
            <!-- lastest post -->
            <div class="lastestPost">
                <div class="container">
                    <div class="row">
                        <div class="postTitle">
                            <h2>THE LASTEST POST</h2>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row">   
                    <c:forEach items="${listLastestPostInHomePage}" var="o" end="3">
                        <div class="col-md-3">

                            <div class="card">
                                <div class="img1"><img src="${o.thumbnailURL}" alt=""></div>
                                    <c:forEach items="${listAccount}" var="i">
                                        <c:if test="${i.accountID == o.accountID}">
                                        <div class="img2"><img src="${i.userImage}"
                                                               alt=""></div>
                                        </c:if> 
                                    </c:forEach>    

                                <div class="main-text">
                                    <c:forEach items="${listAccount}" var="i">
                                        <c:if test="${i.accountID == o.accountID}">
                                            <h2>${i.userFullname}</h2>
                                        </c:if> 
                                    </c:forEach>                                    
                                    <h3>${o.postTitle}</h3>
                                    <p>${o.postDescription}</p>
                                </div>
                                <div class="socials">
                                    <i class="fab fa-facebook"></i>
                                    <i class="fab fa-google-plus"></i> 
                                    <i class="fab fa-youtube"></i> 
                                    <i class="fab fa-twitter"></i>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <!-- lastest post end-->
        <!-- Top like Post -->
        <div class="topLikePost">
            <div class="container">
                <div class="row">
                    <div class="postTitle">
                        <h2>THE TOP LIKE POST</h2>
                    </div>
                </div>
            </div>
            <div class="container">
                <c:forEach items="${listTopLikePostInHomePage}" var="o" end="2">
                    <div class="col-md-4">
                        <div class="card-container">
                            <div class="card">
                                <div class="front">
                                    <div class="avatar">
                                        <c:forEach items="${listAccount}" var="i">
                                            <c:if test="${i.accountID == o.accountID}">
                                                <img src="${i.userImage}" alt="">
                                            </c:if> 
                                        </c:forEach>  
                                    </div>
                                    <div class="main-text">
                                        <c:forEach items="${listAccount}" var="i">
                                            <c:if test="${i.accountID == o.accountID}">
                                                <h2>${i.userFullname}</h2>
                                            </c:if> 
                                        </c:forEach>

                                        <div class="like">
                                            <i class="fa fa-heart fa-3x"></i>
                                            <div>${o.postLike}</div>
                                        </div>
                                    </div>
                                    <div class="footer">
                                        <i class="fa fa-reply"></i> View Post
                                    </div>
                                </div>
                                <div class="back">
                                    <div class="product-img"><img src="${o.thumbnailURL}" alt=""></div>
                                    <div class="main-text">
                                        <div class="main-text-title">
                                            <h3>${o.postTitle}</h3>
                                        </div>
                                        <p class="description">${o.postDescription}
                                        </p>
                                    </div>
                                    <div class="footer">
                                        <div class="footer-to-align-center">
                                            <!-- chỉ nên lấy 3 cái, lấy 4 cái bể -->
                                            <span class="badge badge-success"><i class="fab fa-facebook"></i> Máy tính</span>
                                            <span class="badge badge-success"><i class="fab fa-linkedin"></i> Thiết bị điện
                                                tử</span>
                                            <span class="badge badge-success"> <i class="fab fa-linkedin"></i></i> Thiết bị điện
                                                tử</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Top like Post END -->


        <!-- THE All Post -->
        <div class="theAllPost">
            <div class="container">
                <div class="row">
                    <div class="postTitle">
                        <h2><a href="AllProductServlet"> THE ALL POST</a></h2>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">                    
                    <!--The left card--> 
                    <div class="col-md-8 the-left-card">
                        <div class="row">
                            <c:forEach items="${listAllPostInHomePage}" end="1" var="o" varStatus="count">
                                <c:if test="${count.index == 1}" >
                                    <div class="card no-gutters offer-box-products" style="position: absolute; left: 0; bottom: 0;" >
                                    </c:if>
                                    <c:if test="${count.index == 0}">
                                        <div class="card no-gutters offer-box-products" >
                                        </c:if>
                                        <div class="row">
                                            <div class="col-md-4 px-0">
                                                <div class="product-img">
                                                    <img class="card-img" src="${o.thumbnailURL}" alt="">
                                                </div>
                                            </div>
                                            <div class="col-md-8 px-0">
                                                <div class="card-body">
                                                    <h3 class="card-title mb-0 pb-0">${o.postTitle}</h3>
                                                    <p class="card-text">
                                                        <small><i class="fas fa-clock icon-clock"></i>${o.postDate}</small>
                                                    </p>
                                                    <div class="like-progress">
                                                        <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                                        <div class="progress w-75" style="height: 5px">
                                                            <div class="progress-bar bg-danger" style="width: ${o.postLike*100/mostLike}%"
                                                                 role="progressbar" style="width: 100%" aria-valuenow="36"
                                                                 aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </div>

                                                    <p class="card-text">
                                                        <span class="badge badge-pill badge-primary"><i class="fab fa-facebook"></i>
                                                            Phụ
                                                            kiện điện tử</span>
                                                        <span class="badge badge-pill badge-primary"><i class="fab fa-linkedin"></i>
                                                            Đồ
                                                            điện tử</span>
                                                        <span class="badge badge-pill badge-primary"><i class="fab fa-linkedin"></i>
                                                            Laptop</span>
                                                    </p>
                                                    <p class="card-text description">${o.postDescription}</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>            
                                </c:forEach>            
                            </div>
                        </div>
                        <!--The right card--> 

                        <div class="col-md-4 the-right-card">
                            <c:forEach items="${listAllPostInHomePage}" begin="2" end="2" var="o" >
                                <div class="card offer-box-products">
                                    <div class="product-img"><img src="${o.thumbnailURL}" alt=""></div>
                                    <div class="card-body pb-0 ">
                                        <c:forEach items="${listAccount}" var="i">
                                            <c:if test="${i.accountID == o.accountID}">
                                                <h2>${i.userFullname}</h2>
                                            </c:if> 
                                        </c:forEach>
                                        <h3 class="card-title mb-0 pb-0">${o.postTitle}</h3>
                                        <p class="card-text">
                                            <small><i class="fas fa-clock icon-clock"></i>${o.postDate}</small>
                                        </p>
                                        <div class="like-progress">
                                            <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                            <div class="progress w-75" style="height: 5px">
                                                <div class="progress-bar bg-danger" style="width: ${o.postLike*100/mostLike}%" role="progressbar"
                                                     style="width: 100%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100">
                                                </div>
                                            </div>
                                        </div>
                                        <p class="description">${o.postDescription}</p>
                                    </div>
                                    <div class="footer">
                                        <div class="footer-to-align-center">

                                            <span class="badge badge-primary"><i class="fab fa-facebook"></i> Máy tính</span>
                                            <span class="badge badge-primary"><i class="fab fa-linkedin"></i> Thiết bị điện
                                                tử</span>
                                            <span class="badge badge-primary"><i class="fab fa-linkedin"></i> Thiết bị điện
                                                tử</span>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>

                    </div>
                </div>
            </div>


            <!--End the all post--> 


            <!-- The Exchanged Post -->
            <div class="theExchangedPost">
                <div class="container">
                    <div class="row">
                        <div class="postTitle">
                            <h2>THE LATEST EXCHANGED POST</h2>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <c:set var="list_length" value="${fn:length(listAllExchangeInHomePage)}" />
                    <!--duyyet tu cuoi de lay lastest exchange, vì id nó sẽ lớn nhất-->
                    <c:forEach items="${listAllExchangeInHomePage}" var="o" begin="${list_length-1}" end="${list_length-1}">
                        <div class="col-md-4">
                            <div class="card">
                                <div class="avatar">
                                    <c:forEach items="${listAllPostInHomePage}" var="i">
                                        <c:if test="${i.postID == o.firstPostID}">
                                            <c:forEach items="${listAccount}" var="k">
                                                <c:if test="${k.accountID == i.accountID}">
                                                    <img src="${k.userImage}" alt="">
                                                    <c:set var="firstExchangeName" value="${k.userFullname}"></c:set>
                                                    <c:set var="firstExchangeTitle" value="${i.postTitle}"></c:set>
                                                    <c:set var="firstExchangeThumnail" value="${i.thumbnailURL}"></c:set>
                                                </c:if>
                                            </c:forEach> 
                                        </c:if> 
                                    </c:forEach>
                                </div>
                                <div class="username">
                                    <h3><c:out value="${firstExchangeName}"></c:out></h3>
                                    </div>
                                    <!-- draw the line break -->
                                    <div style="border-top: 1px solid #e3e9ef;"></div>
                                    <div class="avatar">
                                    <c:forEach items="${listAllPostInHomePage}" var="i">
                                        <c:if test="${i.postID == o.secondPostID}">
                                            <c:forEach items="${listAccount}" var="k">
                                                <c:if test="${k.accountID == i.accountID}">
                                                    <img src="${k.userImage}" alt="">
                                                    <c:set var="secondExchangeName" value="${k.userFullname}"></c:set>
                                                    <c:set var="secondExchangeTitle" value="${i.postTitle}"></c:set>
                                                    <c:set var="secondExchangeThumnail" value="${i.thumbnailURL}"></c:set>
                                                </c:if>
                                            </c:forEach> 
                                        </c:if> 
                                    </c:forEach>
                                </div>
                                <div class="username">
                                     <h3><c:out value="${secondExchangeName}"></c:out></h3>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="card left-card">
                                <div class="card-title">
                                    <h3><span class="username"><c:out value="${firstExchangeName}"></c:out></span> và <span class="username"><c:out value="${secondExchangeName}"></c:out></span></h3>
                                        <div><span class="productName">đã đổi thành công</span> <c:out value="${firstExchangeTitle}"></c:out> <span class="productName">lấy </span> <c:out value="${secondExchangeTitle}"></c:out></div>
                                    </div>
                                    <div class="three-img">
                                        <img class="rounded-circle" src="<c:out value="${firstExchangeThumnail}"></c:out>" alt="">
                                        <!-- change size to emphasis two product-img -->
                                        <img style="width: 130px; height:130px; border: none" src="img-test-lastest-post/handshake.jpg"
                                             alt="">
                                        <img class="rounded-circle" src="<c:out value="${secondExchangeThumnail}"></c:out>" alt="">
                                    </div>
                                    <div class="product-name-total">
                                        <span class="badge badge-success w-25 product-name"><c:out value="${firstExchangeTitle}"></c:out></span>
                                        <span class="badge badge-success w-25 product-name"><c:out value="${secondExchangeTitle}"></c:out></span>
                                    </div>

                                </div>
                            </div>
                    </c:forEach>
                </div>
            </div>
            <jsp:include page="Footer.jsp"></jsp:include>

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
            <script src="js/form-validator.min.js"></script>
            <script src="js/contact-form-script.js"></script>
            <script src="js/custom.js"></script>
            <!-- Hữu Tình - 1208.03062021 - searchbar script -->
            <script src="js/searchbar.js"></script>
    </body>

</html>
