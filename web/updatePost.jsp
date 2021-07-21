<%-- 
    Document   : my-account.jsp
    Created on : Jul 7, 2021, 4:54:06 PM
    Author     : ADMIN
--%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%> 
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
        <!--<script src="js/my-account.js"></script>-->
        <!-- Mobile Metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- Site Metas -->
        <title>Update Post - DuniExchange</title>
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
                                <li class="breadcrumb-item"><a href="allProduct.jsp">Post Manager</a></li>
                                <li class="breadcrumb-item active">Update Post</li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="Avatar" style="border-bottom: 3px solid black;">
                <img src="${currentAccount.userImage}" id="imgAva" style="margin-top: -130px;"
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
            </div>

            <div class="mainPage">

                <div class="container1">
                    <div id="create" class="tabcontent">
                        <h3 style="text-align: center;color: rgb(219, 169, 94);">Cập nhật</h3>
                        <form action="confirmUpdatePostAdmin" method="">
                            <div id="title-container" class="form-group input-container">
                                <label for="idPost" class="create-label">ID:</label>
                                <input type="text" readonly=""  name="idPost" class="form-control" value="${post.postID}">                                    
                            </div>
                            <div id="title-container" class="form-group input-container">
                                <label for="title" class="create-label">Tiêu đề:</label>
                                <input type="text" name="title" class="form-control" value="${post.postTitle}">                                    
                            </div>
                            <div id="img-container" class="form-group input-container">
                                <label for="custom-file" class="create-label">Ảnh đính kèm:</label>
                                <div class="custom-file" style="width: 200px;">
                                    <img class="img-fluid" src="${post.thumbnailURL}" alt="" width="150px"/>
                                </div>
                            </div>
                            <br><br>
                            <div id="category-container" class="form-group input-container">
                                <label for="category-items" class="create-label">Phân loại:</label>
                                <div id="category-items" class="category-items">
                                    <sql:setDataSource var="db" driver="com.microsoft.sqlserver.jdbc.SQLServerDriver"  
                                                       url="jdbc:sqlserver://localhost:1433;databaseName=DuniExchange"  
                                                       user="sa"  password="admin"/>  
                                    <sql:query dataSource="${db}" var="rs">  
                                        select * from Category;  
                                    </sql:query>
                                    <sql:query dataSource="${db}" var="cgp">  
                                        select * from CategoryPost where postID = ${post.postID};  
                                    </sql:query>
                                    <c:forEach var="cat" items="${rs.rows}" varStatus="count">  
                                        <div id="category-item-${count.index + 1}" class="category-item">
                                            <label for="category">${cat.categoryName}</label>
                                            <input readonly="" "<c:forEach var="temp" items="${cgp.rows}"> <c:if test="${temp.categoryID == cat.categoryID}">checked=""</c:if> </c:forEach>
                                                                                                                                                type="checkbox" name="category" value="${cat.categoryID}">
                                        </div>
                                    </c:forEach>  
                                </div>
                            </div>
                            <div id="decription-container" class="form-group input-container">
                                <label for="decription" class="create-label">Mô tả:</label>
                                <input type="text" id="decription" name="decription" id="decription" class="form-control" value="${post.postDescription}">
                            </div>
                            <input type="submit" value="Sửa" class="mr-auto btn btn-primary">
                        </form>
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
<script src="js/bootsnav.js"></script>
<script src="js/images-loded.min.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/baguetteBox.min.js"></script>
<script src="js/form-validator.min.js"></script>
<script src="js/contact-form-script.js"></script>
<script src="js/custom.js"></script>
</body>

<script type="text/javascript">
    function validate() {
        destroyAllError();
        isError = false;
        var title = document.getElementById("title");
        var img = document.getElementById("img");
        var descr = document.getElementById("decription");

        if (title.value === "" || title.value === null) {
            insertError(document.getElementById("title-container"), "Must fill this field");
        }

        if (img.files.length === 0) {
            insertError(document.getElementById("img-container"), "Must choose file");
        }

        if (descr.value === "" || descr.value === null) {
            insertError(document.getElementById("decription-container"), "Must fill this field");
        }

        return !isError;
    }
</script>
<!-- Hữu Tình - 1208.03062021 - searchbar script -->
<script src="js/searchbar.js"></script>
</html>
