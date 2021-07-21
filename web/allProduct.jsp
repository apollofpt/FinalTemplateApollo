<%-- 
   Document   : shop
   Created on : Jul 8, 2021, 5:26:17 AM
   Author     : acer
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Products</title>


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
        <!-- Custom CSS icon category -->
        <link rel="stylesheet" href="fontawesome-free-5.15.3-web/css/all.css">
        <!--ShowYourListProductToExchange-->
        <link rel="stylesheet" href="css/showYourListProductToExchange.css">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <!--swal-->
        <link rel="stylesheet" href="MDBootstrap-Swal/swal-package/dist/sweetalert2.min.css">
        <!--like css-->
        <link rel="stylesheet" href="css/like.css">
        <!--JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    </head>

    <body>

        <jsp:include page="Header.jsp"></jsp:include>
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
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="AllProductServlet">Nothing</a></p>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="sortPostServlet?value=popularity">Popularity</a></p>
                                            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="sortPostServlet?value=AtoZ">A → Z</a></p>
                                            <p><a href="sortPostServlet?value=ZtoA">Z → A</a></p>
                                        </div>
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
                                                <c:set var="liked" value="${likedPostID}"/>
                                                <c:forEach items="${listP}" var="lp">
                                                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                        <div class="products-single fix">
                                                            <div class="box-img-hover">
                                                                <div class="type-lb1">
                                                                    <p class="sale"></p>
                                                                </div>
                                                                <img src="${lp.thumbnail}" class="img-fluid1" alt="Image">
                                                                <div class="mask-icon">
                                                                    <ul>
                                                                        <li><a href="PostDetailServlet?postid=${lp.postid}" class="view-button post-button" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                        <li><a class="compare-button post-button" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                        <li><a class="like-button post-button" id="${lp.postid}-post" data-toggle="tooltip" data-placement="right" title="Like"><i class="${not empty liked && fn:contains(liked, lp.postid) ? 'fas' : 'far'} fa-heart"></i></a></li>
                                                                    </ul>
                                                                    <a class="cart exchange" href="#showYourListProductToExchange" data-toggle="modal"> Exchange now!!</a>
                                                                    <input type="hidden"  id="firstPostID" value="${lp.postid}">
                                                                </div>
                                                            </div>
                                                            <div class="why-text">
                                                                <h4><a href="PostDetailServlet?postid=${lp.postid}">  ${lp.title}</a></h4>
                                                                <p style="float: right;"><i class="fas fa-heart" ></i> <span class="like-count" id="${lp.postid}-like">${lp.like}</span> </p>
                                                                <div class="Avatar">
                                                                    <img src="${lp.avatar}" id="imgAva" 
                                                                         >
                                                                    <p class="nameAva"><a href="my-account.html"> ${lp.username}</a></p>
                                                                </div>
                                                                <p class="time">
                                                                    ${lp.date}
                                                                </p>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade" id="list-view">
                                            <div class="list-view-box">
                                                <c:forEach items="${listP}" var="lp">
                                                    <div class="row">
                                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                                                            <div class="products-single fix">
                                                                <div class="box-img-hover">
                                                                    <div class="type-lb1">
                                                                        <p class="new"></p>
                                                                    </div>
                                                                    <img src="${lp.thumbnail}" class="img-fluid1" alt="Image">
                                                                    <div class="mask-icon">
                                                                        <ul>
                                                                            <li><a href="PostDetailServlet?postid=${lp.postid}" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>
                                                                            <li><a data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>
                                                                            <li><a class="like-button" id="${lp.postid}-post" data-toggle="tooltip" data-placement="right" title="Like"><i class="far fa-heart"></i></a></li>
                                                                        </ul>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">
                                                            <div class="why-text full-width">
                                                                <h4><a href="PostDetailServlet?postid=${lp.postid}" style="color: rgb(219, 169, 94);">${lp.title}</a></h4>
                                                                <p>${lp.description}</p>
                                                                <p style="float: right;"><i class="fas fa-heart" ></i><span id="${lp.postid}-like">${lp.like}</span></p>
                                                                <div class="Avatar">
                                                                    <img src="${lp.avatar}" id="imgAva" 
                                                                         >
                                                                    <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94);"> ${lp.username}</a></p>
                                                                </div>
                                                                <p class="time">
                                                                    ${lp.date}
                                                                </p>
                                                                <a class="btn hvr-hover exchange" href="#showYourListProductToExchange" data-toggle="modal">Exchange now!!</a>
                                                                <input type="hidden"  id="firstPostID" value="${lp.postid}">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
                        <div class="product-categori">
                            <div class="search-product">
                                <form action="searchServlet" method="post">
                                    <input name="searchtxt" class="form-control" placeholder="Search here..." type="text" value="${txtSe}">
                                    <button type="submit"> <i class="fa fa-search"></i> </button>
                                </form>
                            </div>
                            <div class="filter-sidebar-left">
                                <div class="title-left">
                                    <h3>Categories</h3>
                                </div>
                                <c:forEach items="${listC}" var="c">
                                    <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">
                                        <a href="categoryServlet?caid=${c.cid}" class="list-group-item list-group-item-action ${tag == c.cid ? "active":""}"> ${c.cname}  <i class=" ${c.cic}" aria-hidden="true"></i></a>
                                    </div>
                                </c:forEach>
                            </div>

                            <div class="card bg-light mb-3">
                                <div class="card-header bg-success text-white text-uppercase">Lastest Product</div>

                                <div class="card-body">
                                    <img class="img-fluid" src="${last.thumbnail}" />
                                    <h2 class="card-title"><a href="PostDetailServlet?postid=${last.postid}" style="font: bolder">${last.title}</a></h2>
                                    <p class="card-text">${last.description}</p>
                                    <div class="like-progress">
                                        <div class="icon-heart"><i class="fas fa-heart"></i> ${last.like} </div>
                                    </div>
                                    <div class="Avatar">
                                        <img src="${last.avatar}" id="imgAva" 
                                             >
                                        <p class="nameAva" ><a href="my-account.html" style="color: rgb(219, 169, 94); font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;"> ${last.username}</a></p>
                                    </div>
                                    <p class="time">
                                        ${last.date}
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
    <!--Modal show exchange list-->

    <div id="showYourListProductToExchange" class="modal fade">
        <div class="modal-dialog mw-100 w-50">
            <div class="modal-content">

                <div class="modal-header">						
                    <h4 class="modal-title w-100 text-center">Your Product</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body ">		
                    <c:if test="${empty listPostByID}">
                        <h1 class="w-100 text-center">Please login to select your product then exchange!</h1>
                    </c:if>
                    <c:forEach items="${listPostByID}" var="o">

                        <%-- <c:if test="${count.index == 1}" >
                             <div class="card no-gutters offer-box-products" style="position: absolute; left: 0; bottom: 0;" >
                             </c:if>--%>
                        <%--<c:if test="${count.index == 0}">--%>
                        <div class="card no-gutters offer-box-products mb-5" >
                            <%--</c:if>--%>
                            <div class="row">
                                <div class="col-md-4 px-0">
                                    <div class="product-img">
                                        <img class="card-img img-fluid1" src="${o.thumbnailURL}" alt="">
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
                                        <form action="ExchangeServlet">  
                                            <input type="submit" class="btn btn-danger" value="Exchange">
                                            <!--postID của họ-->
                                            <input type="hidden" name="firstPostID" class="firstPost">
                                            <!--postID của mềnh-->
                                            <input type="hidden" name="secondPostID" value="${o.postID}">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </c:forEach>                        		
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                    <!--<input type="submit" class="btn btn-info" value="Save">-->
                </div>

            </div>
        </div>
    </div>






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
    <!--404 error-->
    <!--<script src="js/bootsnav.js."></script>--> 
    <!--404 error-->
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
    <!-- Hữu Tình - 1239.20072021 - searchbar script -->
    <c:if test="${not empty currentAccount}">
        <script>
            var uid = ${currentAccount.accountID};
        </script>

        <script src="js/like.js"></script>
    </c:if>
    <!-- Hữu Tình - 1239.20072021 - searchbar script -->
    
    <script>
        $(document).ready(function () {
            $('div .exchange').on('click', function () {
                var id = $(this).parent().find("#firstPostID").val();
                console.log(id);
                $('#showYourListProductToExchange .firstPost').val(id);
            });
        });

    </script>
    <c:if test="${exchangeMess == 'true'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Exchange Successfully! \n\
                            Wanting for he/she to accepted!',
                    icon: 'success',
                    showConfirmButton: false,
                    timer: 2000
                });
    //                setTimeout(function () {
    //                    $(document).ready(function () {
    //                        $(location).attr('href', "Login");
    //                    });
    //                }, 1200);
            });
        </script>
    </c:if>       
    <c:if test="${exchangeMess == 'false'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Oops...',
                    text: 'Something went wrong! Cannot exchange.',
                    icon: 'error',
                    showConfirmButton: true
                }).then((result) => {
                    /* Read more about isConfirmed, isDenied below */
                    if (result.isConfirmed) {
                        $(document).ready(function () {
                            $(location).attr('href', "AllProductServlet");
                        });
                    }
                });
            });
        </script>
    </c:if>    
</body>

</html>

