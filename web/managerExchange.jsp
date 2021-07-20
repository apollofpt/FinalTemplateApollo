
<%@page import="model.Exchange" %>
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
        <title>DuniExchange - Manager Exchange post</title>
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
        <link rel="stylesheet" href="MDBootstrap-Swal/swal-package/dist/sweetalert2.min.css">
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
                            <h2>Manager</h2>
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="HomeServlet">home</a></li>
                                <li class="breadcrumb-item active">Manager</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End All Title Box -->

            <!-- Start Cart  -->
            <div class="cart-box-main">
                <div class="container">
                    <div class="row col-lg-12">
                        <div class="table-main table-responsive">
                            <!--                            <table class="table">
                                                            <thead>
                                                                <tr>
                                                                    <th>ID</th>
                                                                    <th>Name</th>
                                                                    <th>Icon</th>
                                                                    <th>Option</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                        <%--<c:forEach items="${listC}" var="o">--%>
                            <%--<c:if test="${currentAccount.accountID != o.accountID}">--%>
                                <tr>
                                    <td class="name-pr">
                                        <p>${o.cid}</p>
                                    </td>
                                    <td class="price-pr">
                                        <p>${o.cname}</p>
                                    </td>
                                    <td class="name-pr">
                                        <p>${o.cic}</p>
                                    </td>
                                    <td class="remove-pr">
                                        <a href="deleteCategory?idC=${o.cid}">
                                            <i class="fas fa-times"></i>
                                        </a>
                                    </td>
                                </tr>                                             
                            <%--</c:if>--%>

                        <%--</c:forEach>--%>
                    </tbody>
                </table>-->
                        <div class="theExchangedPost">
                            <div class="container">
                                <div class="row">
                                    <div class="postTitle">

                                    </div>
                                </div>
                            </div>
                            <div class="container">
                                <c:set var="list_length" value="${fn:length(listAllExchangeInHomePage)}" />
                                <!--duyyet tu cuoi de lay lastest exchange, vì id nó sẽ lớn nhất-->
                                <c:forEach items="${listAllExchangeInHomePage}" var="o" >
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
                    </div>
                </div>

            </div>
            <!--            <div class="container">
                            <div class="row col-lg-12">
                                <div class="col-lg-7 col-sm-6">
                                    <div class="update-box" style="text-align: center;">
                                        <input value="Update Cart" type="submit">
                                    </div>
                                </div>
                            </div>
            
                        </div>-->
        </div>
        <!-- End Cart -->

        <jsp:include page="Footer.jsp"></jsp:include>

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
        </body>
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

        <!--swal script-->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="MDBootstrap-Swal/swal-package/dist/sweetalert2.min.js"></script>
        <!--exchange accpet or deny script-->

    <c:if test="${exchangeMess == 'accept'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Exchange Successfully!',
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
    <c:if test="${exchangeMess == 'deny'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Deny Successfully!',
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
    <c:if test="${exchangeMess == 'error'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Oops...',
                    text: 'Something went wrong! Cannot accept or deny.',
                    icon: 'error',
                    showConfirmButton: true,
                }).then((result) => {
                    /* Read more about isConfirmed, isDenied below */
                    if (result.isConfirmed) {
                        $(document).ready(function () {
                            $(location).attr('href', "HomeServlet");
                        });
                    }
                })
            });
        </script>
    </c:if>    

</body>

</html>

