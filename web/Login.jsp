<%-- 
    Document   : Login
    Created on : Nov 29, 2018, 1:20:07 AM
    Author     : FAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balloons Market</title>
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">

        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>

    <body style="background-color: darksalmon;color: #fff;font-family: 'Caveat', cursive;" >
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container ">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" style="background-color: #fff;border-radius: .2em;">
                    <div class="panel panel-login">
                        <div class="panel-heading">
                            <div class="row" style="color: black" >
                                <div class="text-center" >
                                    <h2>Login</h2>
                                    <h4 class="text-center mt-3">${Message}</h4>
                                </div>
                                <hr>
                            </div>

                            <div class="panel-body">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <form id="login-form" action="Login" method="post" role="form" style="display: block;">
                                            <div class="form-group">                 
                                                <input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
                                            </div>

                                            <div class="form-group">
                                                <div class="row">
                                                    <div class="col-lg-6">
                                                        <input type="submit" name="login" tabindex="4" class="btn btn-block" 
                                                               value="Login" style="background-color: peru ;color: #fff;" >
                                                    </div>
                                                    <div class="col-lg-6">
                                                        <a href="Register" class="btn btn-block" style="background-color: peru ;color: #fff;">Register</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>    
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br>
        <div class="mt-5 text-center">
            <a href="index.html" style="color: #fff"><h4>Back</h4></a>
        </div>
    </body>
</html>
