<%-- 
    Document   : Register
    Created on : Jun 23, 2021, 7:27:09 PM
    Author     : truon
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Đăng kí</title>

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <!--swal-->
        <link rel="stylesheet" href="MDBootstrap-Swal/swal-package/dist/sweetalert2.min.css">
        <!-- Main css -->
        <link rel="stylesheet" href="css/style1.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" />
        <!-- Google Fonts Roboto -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" />

        <!--JQuery-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script type="text/javascript"></script>
        <style>
           
        </style>
    </head>
    <body>

        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">Sign up</h2>
                            <form class="register-form" id="register-form" action="RegisterServlet" method="POST">
                                <div class="form-group">
                                    <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="username" id="username" placeholder="Tên tài khoản" value="${lastInputAccount.username}"/>
                                    <c:set var="errors" value="${requestScope.INSERTERR}" />
                                    <c:if test="${not empty errors.usernameLengthErr}">
                                        <font color="red">${errors.usernameLengthErr}</font><br><br>
                                        <a href="Register.jsp"></a>
                                    </c:if>                                
                                </div>
                                <div class="form-group">
                                    <label for="email"><i class="zmdi zmdi-email"></i></label>
                                    <input type="email" name="email" id="email" placeholder="Email" value="${email}" readonly=""/>
                                    <c:if test="${not empty errors.emailLengthErr}">
                                        <font color="red">${errors.emailLengthErr}</font><br><br>
                                    </c:if>    
                                </div>
                                <div class="form-group">
                                    <label for="fullname"><i class="zmdi zmdi-email"></i></label>
                                    <input type="text" name="fullname" id="fullname" placeholder="Họ và tên" value="${lastInputAccount.userFullname}"/>
                                    <c:if test="${not empty errors.fullnameLengthErr}">
                                        <font color="red">${errors.fullnameLengthErr}</font><br><br>
                                    </c:if>                                    
                                </div>
                                <div class="form-group">
                                    <label for="password"><i class="zmdi zmdi-lock"></i></label>
                                    <input type="password" name="password" id="password" placeholder="Mật khẩu" value="${lastInputAccount.userPassword}"/>
                                    <c:if test="${not empty errors.passwordLengthErr}">
                                        <font color="red">${errors.passwordLengthErr}</font><br><br>
                                    </c:if>    
                                </div>
                                <div class="form-group">
                                    <label for="re_password"><i class="zmdi zmdi-lock-outline"></i></label>
                                    <input type="password" name="re_password" id="re_password" placeholder="Xác nhận mật khẩu" value="${re_password}"/>
                                    <c:if test="${not empty errors.re_passwordNoMatch}">
                                        <font color="red">${errors.re_passwordNoMatch}</font><br><br>
                                    </c:if>                                    
                                </div>
                                <div class="form-group">
                                    <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                    <label for="agree-term" class="label-agree-term"><span><span></span></span>Tôi đồng ý tất cả các tuyên bố trong <a href="#" class="term-service">Điều khoản dịch vụ</a></label>
                                </div>
                                <div class="form-group form-button">
                                    <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng kí"/>
                                </div>
                                <a href="home.jsp">Quay trở lại trang chủ</a>
                            </form>
                        </div>
                        <div class="signup-image">
                            <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                            <a href="Login.jsp" class="signup-image-link">Tôi đã có tài khoản</a>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <c:if test="${registerMess == 'true'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Register Successfully',
                    icon: 'success',
                    showConfirmButton: false,
                    
                });
                setTimeout(function () {
                    $(document).ready(function () {
                        $(location).attr('href', "Login");
                    });
                }, 1200);
            });
        </script>
        </c:if>       
        <c:if test="${registerMess == 'false'}">
        <script>
            $(window).on('load', function () {
                Swal.fire({
                    title: 'Username already exists!',
                    icon: 'info',
                    showConfirmButton: true,
                    
                });
               
            });
        </script>
        </c:if>    
        <c:if test="${registerException == 'true'}">
            <script type="text/javascript">
                $(window).on('load', function () {
                    Swal.fire({
                        title: 'Oops...',
                        text: 'Something went wrong!',
    //                    html: '<div>Something went wrong! </div> <div> First Name and Last Name must be less or equal than 100 character. </div>Phone must be numeric and less or equal than 20 digits.',

                        icon: 'error',
                        showConfirmButton: true,
    //                    footer: '<a href="">Why do I have this issue?</a>'
                        footer: '<a id="show" href="#">\n\
                                Why do I have this issue?</a>\n\
                                   <div id="whyError" style="display:none; text-align: center">\n\
                                         <div>Input the correct data type.</div>\n\
                                        <div>Or our system ran into a problem. Please register again!</div>\n\
                                    </div>\n\
                                '
    //                    footer: '<p>\n\abc</p>'
                    });
                    $(document).ready(function () {
                        $("#show").click(function () {
                            $("#whyError").show();
                            $("#show").hide();
                        });
                    });
                });

            </script>
        </c:if>
        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
        <script src="MDBootstrap-Swal/swal-package/dist/sweetalert2.min.js"></script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
