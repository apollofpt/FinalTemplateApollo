<%-- 
    Document   : product-detail
    Created on : Jul 8, 2021, 11:16:22 PM
    Author     : acer
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Page</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">

        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->

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
        <jsp:include page="Header.jsp"></jsp:include>

        <!-- Start All Title Box -->	
        <div class="all-title-box">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h2>Chi tiết sản phẩm</h2>
                        <ul class="breadcrumb">
                            <li class="breadcrumb-item"><a href="index.html">Product</a></li>
                            <li class="breadcrumb-item active">Chi tiết sản phẩm</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End All Title Box -->




        <!--Main section of Product detail-->
        <div class="product-detail-box-main">        <!--padding: 70px 0px;--> 

            <div class="containerVerTrang">
                <div class="row">
                    <div class="col-xl-5 col-lg-5 col-md-6">
                        <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active"> <img class="d-block w-100" src="${postid.thumbnail}" alt="First slide" > </div>    	
                                </ol>					                
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7 col-md-6">
                        <div class="single-product-details">
                            <h1 class="title-all mb-2 text-uppercase "><strong>${postid.title}</strong></h1>
                            <h3>Phân loại: </h3>        
                            <c:forEach items="${listcate}" var="lc">
                                <a href="categoryServlet?caid=${lc.cid}"> &nbsp;${lc.cname} &nbsp;</a>
                            </c:forEach><br><br/>
                            <!--<p class="mb-2 text-muted text-uppercase small" id="KieuHang">Áo phông</p>-->
                            <p class="pt-1"> ${postid.description}</p>

                            <div class="table-responsive">
                                <table class="table table-sm table-borderless mb-0">
                                    <tbody>
                                        <!--                                        <tr>
                                                                                    <th class="pl-0 w-25" scope="row"><strong>Kích cỡ</strong></th>
                                                                                    <td>size L</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <th class="pl-0 w-25" scope="row"><strong>Màu sắc</strong></th>
                                                                                    <td>Đa màu</td>
                                                                                </tr>-->
                                    </tbody>
                                </table>
                            </div>
                            <hr>
                            <table class="information-of-seller table table-sm table-borderless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row" style="padding-top: 20px;">Được đăng bởi</th>
                                        <td>   <img src="${postid.avatar}" width="45px" class="rounded-circle">
                                            <a href="#">${postid.username}</a><br>
                                            <!--Hoạt động 10 phút trước-->
                                        </td>
                                    </tr>
                                </tbody>
                            </table>

                            <div class="date-of-sell">
                                <div class="containerVerTrang mb-2">
                                    <div class="row">
                                        <p class="pl-0 w-25">Ngày đăng</p><p>${postid.date}</p>
                                    </div>
                                </div>
                            </div> 
                            <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Trao đổi ngay</button>
                            <button type="button" class="btn btn-light btn-md mr-1 mb-2"><i class="fas fa-heart pr-2"></i>Like</button>
                        </div>
                    </div>    

                </div>   		
                <hr>
                <div class="row my-5">
                    <div class="col-lg-12  my-3">
                        <div class="title-all text-center">
                            <h1>Vật phẩm khác</h1>
                            <p></p>
                        </div>
                        <div class="featured-products-box owl-carousel owl-theme">
                            <div class="item" style=" width: 400; height: 400">
                                <c:forEach items="${catePost}" var="ct">
                                    <div class="products-single fix " >
                                        <div class="box-img-hover">
                                            <img src="${ct.thumbnail}" class="img-fluid" alt="Image">
                                            <div class="mask-icon">
                                                <ul>
                                                    <!--><a href="PostDetailServlet?postid=${lp.postid}"--> 
                                                    <li><a href="PostDetailServlet?postid=${ct.postid}" data-toggle="tooltip" data-placement="right" title="Xem"><i class="fas fa-eye"></i></a></li>
                                                    <li><a href="#" data-toggle="tooltip" data-placement="right" title="Like"><i class="far fa-heart"></i></a></li>
                                                </ul>
                                                <a class="cart" href="#">Đưa vào giỏ hàng</a>
                                            </div>
                                        </div>
                                        <div class="why-text">
                                            <h4>${ct.title}</h4>
                                            <h5>${ct.date}</h5>
                                            <h3 style="float: right">Liked: ${ct.like}</h3>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>	
                </div>
            </div>

        </div>

        <!--End main section of Product detail-->

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
