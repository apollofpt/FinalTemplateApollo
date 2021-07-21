<%-- 
    Document   : editProfile
    Created on : Jul 7, 2021, 5:41:13 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Update category</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Site Icons -->
        <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
        <link rel="apple-touch-icon" href="images/apple-touch-icon.png">


        <link rel="stylesheet" href="css/style.css">

        <!-- Font Icon -->
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">

        <!-- Main css -->
        <link rel="stylesheet" href="css/style1.css">
    </head>
    <body>

        <div class="main">

            <!-- Sign up form -->
            <section class="signup">
                <div class="container">
                    <div class="signup-content">
                        <div class="signup-form">
                            <h2 class="form-title">CHANGE CATEGORY</h2>
                            <form action="ChangeCategoryServlet" class="register-form" id="register-form">

                                <h3 >Category id</h3>
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" readonly="" name="ncid" id="ncid" value="${ctgr.cid}"/>
                                </div>

                                <h3>Category name</h3>
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="newc" id="newc" value="${ctgr.cname}"/>
                                </div>
                                <h3>Category icon</h3>
                                <div class="form-group">
                                    <label for="icon"><i class="zmdi zmdi-email"></i></label>
                                    <input type="text" name="newic" id="newic" value="${ctgr.cic}"/>
                                    <i class="fa fa-shopping-bag"></i>
                                </div>
                                <div class="form-group form-button">
                                    <!--<a href="ChangeCategoryServlet?ncid=${ctgr.cid}"><input type="submit" name="Changer" id="signup" class="form-submit" value="Change"/> </a>-->
                                    <a href="ChangeCategoryServlet?ncid=${ctgr.cid}"> <input type="submit" name="Changer" id="signup" class="form-submit" value="Save"/></a>
                                </div>
                                <a href="ManagerCategoryServlet">Back to category list</a>
                            </form>

                        </div>
                        <div class="signup-image">
                            <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>

                        </div>
                    </div>
                </div>
            </section>
        </div>


        <!-- JS -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="js/main.js"></script>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
