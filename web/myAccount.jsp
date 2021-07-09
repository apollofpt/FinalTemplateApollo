<%-- 
    Document   : my-account.jsp
    Created on : Jul 7, 2021, 4:54:06 PM
    Author     : ADMIN
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <script src="js/my-account.js"></script>
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>My Account - DuniExchange</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
        <link href="fontawesome-free-5.15.3-web/css/all.css">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <!-- Site CSS -->
        <link rel="stylesheet" href="css/style.css">
        <!-- Responsive CSS -->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- Custom CSS -->
        <link rel="stylesheet" href="css/my-account.css">

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
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="allProduct.jsp">All Products</a></li>
                                <li class="breadcrumb-item active">My Account</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="Avatar" style="border-bottom: 3px solid black;">
                <img src="https://salt.tikicdn.com/cache/w444/ts/product/26/ee/55/48b7aed353fd452bd575b4822cd85214.jpg" id="imgAva" style="margin-top: -130px;"
                     >
                <p class="nameAva">${currentAccount.userFullname}</p>
        </div>
        <!-- End All Title Box -->

        <!-- Start My Account  -->
        <div class="my-account-box-main" >

            <div class="info" style="">
                Gmail: <div class="gmail" style=" display: inline-block;">${currentAccount.userEmail}</div> <br>
                Address: <div class="address" style=" display: inline-block;"> Hoa Hai - Ngu Hanh Son </div> <br>
                Phone: <div class="phone" style=" display: inline-block;"> 0368569127 </div>
                <br><button><a href="editProfile.jsp">edit profile <i class="fas fa-pencil-alt"></i></a></button>

            </div>

            <div class="mainPage">

                <div class="container1">
                    <div class="tab d-flex">
                        <button class="tablinks active">posted</button>
                        <button class="tablinks">seen</button>
                        <button class="tablinks">create</button>
                    </div>

                    <div id="posted" class="tabcontent">
                        <h3 style="text-align: center;color: rgb(219, 169, 94);">Bài đăng</h3>
                        <!--post 1-->
                        <c:forEach items="${listPostByID}" var="o">
                            <div class="post" >
                                <div class="imgp">
                                    <img src="${o.thumbnailURL}" style="" alt="anh san pham">
                                </div>
                                <div class="contentp">
                                    <a class="namesp" href="#" style=""> 
                                        ${o.postTitle}</a>
                                    <p class="author">
                                        Posted by: <a href="">${currentAccount.userFullname}</a>
                                    </p>
                                    <p>${o.postDescription}</p>
                                    <p class="time">
                                        ${o.postDate}
                                    </p>
                                    <div class="like-progress">
                                        <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                        <div class="progress w-75" style="height: 5px">
                                            <div class="progress-bar bg-danger" style="width: ${o.postLike*100/mostLike}%"
                                                 role="progressbar" style="width: 100%" aria-valuenow="50"
                                                 aria-valuemin="0" aria-valuemax="100">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>


                    <div id="seen" class="tabcontent">
                        <h3 style="text-align: center;color: rgb(219, 169, 94);"">Đã xem</h3>
                        <div class="post" >
                            <div class="imgp">
                                <img src="https://dienmaythienhoa.vn/static/images/4.%20hinh%20sp/3.%20Hinh%20SP%202/laptop-asus-s330fn-ey037t-1.png" style="" alt="anh san pham">
                            </div>
                            <div class="contentp">
                                <a class="namesp" href="#" style="font-size: 30px;font-weight: bold ;"> laptop-asus-s330fn-ey037t-1</a>
                                <p class="author">
                                    Posted by: <a href="">Uyen Trang</a>
                                </p>
                                <p>CPU core i51135G7; Graphic card: Intel Iris XE; Ram 8GB</p>
                                <p class="time">
                                    Mon, 31/05/2021
                                <div class="like-progress">
                                    <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                    <div class="progress w-75" style="height: 5px">
                                        <div class="progress-bar bg-danger" style="width: 36%"
                                             role="progressbar" style="width: 100%" aria-valuenow="50"
                                            aria-valuemin="0" aria-valuemax="100">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--post 2-->
                        <div class="post" >
                            <div class="imgp">
                                <img src="https://theme.hstatic.net/200000251697/1000655457/14/smallbanner_img1.jpg?v=273" style="" alt="anh san pham">
                            </div>
                            <div class="contentp">
                                <a class="namesp" href="#" > laptop-dell</a>
                                <p class="author">
                                    Posted by: <a href="">Nhat Quang</a>
                                </p>
                                <p>CPU core i51135G7; Graphic card: Intel Iris XE; Ram 8GB</p>
                                <p class="time">
                                    Mon, 31/05/2021
                                </p>
                                <div class="like-progress">
                                    <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                    <div class="progress w-75" style="height: 5px">
                                        <div class="progress-bar bg-danger" style="width: 70%"
                                             role="progressbar" style="width: 100%" aria-valuenow="70"
                                             aria-valuemin="0" aria-valuemax="100"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </p> 
                    </div>


                </div> 
            </div>
        </div>
    </div>
</div>
<!-- End My Account -->


<jsp:include page="Footer.jsp"></jsp:include>

<!-- Start copyright  -->
<div class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
        <a href="https://html.design/">html design</a></p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>

<!--<script src="fontawesome-free-5.15.3-web/js/all.js"></script>-->

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
<script type="text/javascript">
    var buttons = document.getElementsByClassName('tablinks');
    var contents = document.getElementsByClassName('tabcontent');
    function showContent(id) {
        for (var i = 0; i < contents.length; i++) {
            contents[i].style.display = 'none';
        }
        var content = document.getElementById(id);
        content.style.display = 'block';
    }
    for (var i = 0; i < buttons.length; i++) {
        buttons[i].addEventListener("click", function () {
            var id = this.textContent;
            for (var i = 0; i < buttons.length; i++) {
                buttons[i].classList.remove("active");
            }
            this.className += " active";
            showContent(id);
        });
    }
    showContent('posted');
</script>
<!-- Hữu Tình - 1208.03062021 - searchbar script -->
<script src="js/searchbar.js"></script>
</html>
