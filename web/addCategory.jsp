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
        <title>Thêm category</title>

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
                            <h2 class="form-title">Add category</h2>
                            <form action="AddCategoryServlet" class="register-form" id="register-form">
                                <div class="form-group">
                                    <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                    <input type="text" name="name" id="name" placeholder="Name category"/>
                                </div>
                                <div class="form-group">
                                    <label for="icon"><i class="zmdi zmdi-email"></i></label>
                                    <input type="text" name="icon" id="icon" placeholder="Url icon category"/>
                                </div>
                                <div class="form-group form-button">
                                    <a href="AddCategoryServlet"> <input type="submit" name="Changer" id="signup" class="form-submit" value="Add"/></a>
                                    <!--<a href="AddCategoryServlet"><input value="Add" type="submit"></a>-->
                                </div>
                                <a href="ManagerCategoryServlet">Back to manager category</a>
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
