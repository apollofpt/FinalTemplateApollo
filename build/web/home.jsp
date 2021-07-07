<%-- 
    Document   : home
    Created on : Jun 23, 2021, 12:23:10 AM
    Author     : truon
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
                <div class="col-md-3">
                    <div class="card">
                        <div class="img1"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                        <div class="img2"><img style="margin-left: -25%;" src="img-test-lastest-post/people-2.jpg"
                                alt=""></div>
                        <div class="main-text">
                            <h2>Nhat Quang LNN</h2>
                            <h3>Muốn đổi chiếc laptop này lấy gì chưa biết!</h3>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore, eos atque omnis,
                                tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                dolores reprehenderit aliquid! Ad excepturi quibusdam assumenda doloribus.</p>
                        </div>
                        <div class="socials">
                            <i class="fab fa-facebook"></i>
                            <i class="fab fa-linkedin"></i>
                            <i class="fab fa-youtube"></i>
                            <i class="fab fa-twitter"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img1"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                        <div class="img2"><img style="margin-left: -25%;" src="img-test-lastest-post/people-2.jpg"
                                alt=""></div>
                        <div class="main-text">
                            <h2>Nhat Quang LNN</h2>
                            <h3>Muốn đổi chiếc laptop này lấy gì chưa biết!</h3>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore, eos atque omnis,
                                tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                dolores reprehenderit aliquid! Ad excepturi quibusdam assumenda doloribus.</p>
                        </div>
                        <div class="socials">
                            <i class="fab fa-facebook"></i>
                            <i class="fab fa-linkedin"></i>
                            <i class="fab fa-youtube"></i>
                            <i class="fab fa-twitter"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img1"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                        <div class="img2"><img style="margin-left: -25%;" src="img-test-lastest-post/people-2.jpg"
                                alt=""></div>
                        <div class="main-text">
                            <h2>Nhat Quang LNN</h2>
                            <h3>Muốn đổi chiếc laptop này lấy gì chưa biết!</h3>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore, eos atque omnis,
                                tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                dolores reprehenderit aliquid! Ad excepturi quibusdam assumenda doloribus.</p>
                        </div>
                        <div class="socials">
                            <i class="fab fa-facebook"></i>
                            <i class="fab fa-linkedin"></i>
                            <i class="fab fa-youtube"></i>
                            <i class="fab fa-twitter"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img1"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                        <div class="img2"><img style="margin-left: -25%;" src="img-test-lastest-post/people-2.jpg"
                                alt=""></div>
                        <div class="main-text">
                            <h2>Nhat Quang LNN</h2>
                            <h3>Muốn đổi chiếc laptop này lấy gì chưa biết!</h3>
                            <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore, eos atque omnis,
                                tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                dolores reprehenderit aliquid! Ad excepturi quibusdam assumenda doloribus.</p>
                        </div>
                        <div class="socials">
                            <i class="fab fa-facebook"></i>
                            <i class="fab fa-linkedin"></i>
                            <i class="fab fa-youtube"></i>
                            <i class="fab fa-twitter"></i>
                        </div>
                    </div>
                </div>
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
            <div class="col-md-4">
                <div class="card-container">
                    <div class="card">
                        <div class="front">
                            <div class="avatar">
                                <img src="img-test-lastest-post/people1.jpg" alt="">
                            </div>
                            <div class="main-text">
                                <h2>Nhat Quang LNN</h2>
                                <div class="like">
                                    <i class="fa fa-heart fa-3x"></i>
                                    <div>3k2</div>
                                </div>
                            </div>
                            <div class="footer">
                                <i class="fa fa-reply"></i> View Post
                            </div>
                        </div>
                        <div class="back">
                            <div class="product-img"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                            <div class="main-text">
                                <div class="main-text-title">
                                    <h3>Muốn đổi chiếc laptop này lấy gì chưa biết nơi</h3>
                                </div>
                                <p class="description">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore,
                                    eos atque omnis,
                                    tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                    dolores reprehenderit aliquid! Ad excepturi quibusdam description
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

            <div class="col-md-4 ">
                <div class="card-container">
                    <div class="card">
                        <div class="front">
                            <div class="avatar">
                                <img src="img-test-lastest-post/people1.jpg" alt="">
                            </div>
                            <div class="main-text">
                                <h2>Nhat Quang LNN</h2>
                                <div class="like">
                                    <i class="fa fa-heart fa-3x"></i>
                                    <div>3k2</div>
                                </div>
                            </div>
                            <div class="footer">
                                <i class="fa fa-reply"></i> View Post
                            </div>
                        </div>
                        <div class="back">
                            <div class="product-img"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                            <div class="main-text">
                                <div class="main-text-title">
                                    <h3>Muốn đổi chiếc laptop này lấy gì chưa biết nơi</h3>
                                </div>
                                <p class="description">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore,
                                    eos atque omnis,
                                    tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                    dolores reprehenderit aliquid! Ad excepturi quibusdam description
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
            <div class="col-md-4">
                <div class="card-container">
                    <div class="card">
                        <div class="front">
                            <div class="avatar">
                                <img src="img-test-lastest-post/people1.jpg" alt="">
                            </div>
                            <div class="main-text">
                                <h2>Nhat Quang LNN</h2>
                                <div class="like">
                                    <i class="fa fa-heart fa-3x"></i>
                                    <div>3k2</div>
                                </div>
                            </div>
                            <div class="footer">
                                <i class="fa fa-reply"></i> View Post
                            </div>
                        </div>
                        <div class="back">
                            <div class="product-img"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                            <div class="main-text">
                                <div class="main-text-title">
                                    <h3>Muốn đổi chiếc laptop này lấy gì chưa biết nơi</h3>
                                </div>
                                <p class="description">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore,
                                    eos atque omnis,
                                    tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                    dolores reprehenderit aliquid! Ad excepturi quibusdam description
                                </p>
                            </div>
                            <div class="footer">
                                <div class="footer-to-align-center">
                                    <!-- chỉ nên lấy 3 cái, lấy 4 cái bể -->
                                    <span class="badge badge-success"><i class="fab fa-facebook"></i> Máy tính</span>
                                    <span class="badge badge-success"><i class="fab fa-linkedin"></i> Thiết bị điện
                                        tử</span>
                                    <span class="badge badge-success"><i class="fab fa-linkedin"></i> Thiết bị điện
                                        tử</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Top like Post END -->


    <!-- THE All Post -->
    <div class="theAllPost">
        <div class="container">
            <div class="row">
                <div class="postTitle">
                    <h2>THE ALL POST</h2>
                </div>
            </div>
        </div>
        <dvi class="container">
            <div class="row">
                <!-- The left card -->
                <div class="col-md-8 the-left-card">
                    <div class="row">
                        <div class="card no-gutters offer-box-products">
                            <div class="row">
                                <div class="col-md-4 px-0">
                                    <div class="product-img">
                                        <img class="card-img" src="img-test-lastest-post/people1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-8 px-0">
                                    <div class="card-body">
                                        <h3 class="card-title mb-0 pb-0">Nhật Quang LNN muốn đổi laptop cũ này lấy gì
                                            chưa
                                            biết</h3>
                                        <p class="card-text">
                                            <small><i class="fas fa-clock icon-clock"></i>12:AM 23/5/2001</small>
                                        </p>
                                        <div class="like-progress">
                                            <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                            <div class="progress w-75" style="height: 5px">
                                                <div class="progress-bar bg-danger" style="width: 36%"
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
                                        <p class="card-text description">Lorem ipsum dolor sit amet consectetur
                                            adipisicing
                                            elit. Vel
                                            obcaecati quidem quibusdam, quos magnam porro consequuntur quod nulla sequi
                                            voluptas ratione cumque quaerat magni iusto dolorum, voluptatibus quas
                                            tenetur
                                            nostrum.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- position abosolut, left: 0; bottom: 0 to align bottom this card 
                                (the hieght of two left cards always equal to height of right card) -->
                        <div class="card no-gutters offer-box-products" style="position: absolute; left: 0; bottom: 0;">
                            <div class="row">
                                <div class="col-md-4 px-0">
                                    <div class="product-img">
                                        <img class="card-img" src="img-test-lastest-post/people1.jpg" alt="">
                                    </div>
                                </div>
                                <div class="col-md-8 px-0">
                                    <div class="card-body">
                                        <h3 class="card-title mb-0 pb-0">Nhật Quang LNN muốn đổi laptop cũ này lấy gì
                                            chưa
                                            biết</h3>
                                        <p class="card-text">
                                            <small><i class="fas fa-clock icon-clock"></i>12:AM 23/5/2001</small>
                                        </p>
                                        <div class="like-progress">
                                            <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                            <div class="progress w-75" style="height: 5px">
                                                <div class="progress-bar bg-danger" style="width: 36%"
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
                                        <p class="card-text description">Lorem ipsum dolor sit amet consectetur
                                            adipisicing
                                            elit. Vel
                                            obcaecati quidem quibusdam, quos magnam porro consequuntur quod nulla sequi
                                            voluptas ratione cumque quaerat magni iusto dolorum, voluptatibus quas
                                            tenetur
                                            nostrum.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- The right card -->
                <div class="col-md-4 the-right-card">
                    <div class="card offer-box-products">
                        <div class="product-img"><img src="img-test-lastest-post/laptop.jpg" alt=""></div>
                        <div class="card-body pb-0 ">
                            <h2>Nhat Quang LNN</h2>
                            <h3 class="card-title mb-0 pb-0">Muốn đổi chiếc laptop này lấy gì chưa biết!ss sss ss</h3>
                            <p class="card-text">
                                <small><i class="fas fa-clock icon-clock"></i>12:AM 23/5/2001</small>
                            </p>
                            <div class="like-progress">
                                <div class="icon-heart"><i class="fas fa-heart"></i></div>
                                <div class="progress w-75" style="height: 5px">
                                    <div class="progress-bar bg-danger" style="width: 36%" role="progressbar"
                                        style="width: 100%" aria-valuenow="36" aria-valuemin="0" aria-valuemax="100">
                                    </div>
                                </div>
                            </div>
                            <p class="description">Lorem ipsum dolor, sit amet consectetur adipisicing elit. Dolore, eos
                                atque omnis,
                                tenetur repellat soluta itaque provident perspiciatis nulla illum praesentium optio,
                                dolores reprehenderit aliquid! Ad excepturi quibusdam assumenda doloribus.</p>
                        </div>
                        <div class="footer">
                            <div class="footer-to-align-center">
                                <!-- chỉ nên lấy 3 cái, lấy 4 cái bể -->
                                <span class="badge badge-primary"><i class="fab fa-facebook"></i> Máy tính</span>
                                <span class="badge badge-primary"><i class="fab fa-linkedin"></i> Thiết bị điện
                                    tử</span>
                                <span class="badge badge-primary"><i class="fab fa-linkedin"></i> Thiết bị điện
                                    tử</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </dvi>
    </div>
    <!-- End the all post -->


    <!-- The Exchanged Post -->
    <div class="theExchangedPost">
        <div class="container">
            <div class="row">
                <div class="postTitle">
                    <h2>THE EXCHANGED POST</h2>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="col-md-4">
                <div class="card">
                    <div class="avatar">
                        <img src="img-test-lastest-post/people1.jpg" alt="">
                    </div>
                    <div class="username">
                        <h3>Nhật Quang LNN</h3>
                    </div>
                    <!-- draw the line break -->
                    <div style="border-top: 1px solid #e3e9ef;"></div>
                    <div class="avatar">
                        <img src="img-test-lastest-post/people-2.jpg" alt="">
                    </div>
                    <div class="username">
                        <h3>Mạnh Khôi NM</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card left-card">
                    <div class="card-title">
                        <h3><span class="username">Nhat Quang LNN</span> và <span class="username">Nguyễn Mạnh Khôi</span></h3>
                        <div>đã đổi thành công Laptop cũ này lấy một
                            chiếc máy hút bụi đa năng </div>
                    </div>
                    <div class="three-img">
                        <img class="rounded-circle" src="img-test-lastest-post/laptop.jpg" alt="">
                        <!-- change size to emphasis two product-img -->
                        <img style="width: 130px; height:130px; border: none" src="img-test-lastest-post/handshake.jpg"
                            alt="">
                        <img class="rounded-circle" src="img-test-lastest-post/clothes.jpg" alt="">
                    </div>
                    <div class="product-name-total">
                        <span class="badge badge-success w-25 product-name"> Máy tính</span>
                        <span class="badge badge-success w-25 product-name"> Máy hút bụi</span>
                    </div>

                </div>
            </div>

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
