<%-- 
    Document   : Register
    Created on : Nov 29, 2018, 1:22:29 AM
    Author     : FAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Balloons Market</title>
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
    </head>

    <body style="background-color: darksalmon;font-family: 'Caveat', cursive;">
        <br>
        <br>
        <br>
        <br>
        <br>
        <div class="container ">
            <div class="row">
                <div class="col-md-6 col-md-offset-3" style="background-color: #fff;border-radius: .2em;">
                    <div class="panel panel-register">
                        <div class="panel-heading">
                            <h2 class="text-center m-4">Register</h2>       
                            <hr>

                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">

                                    <form action="Register" method="post">
                                        <div class="form-group">
                                            <input type="text" name="user" tabindex="1" class="form-control" placeholder="Username" >
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="pass"  tabindex="1" class="form-control" placeholder="Password">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" name="confirmpass"  tabindex="1" class="form-control" placeholder="Confirm Password">
                                        </div>
                                        <div class="form-group">
                                            <input type="email" name="mail" tabindex="1" class="form-control" placeholder="Email Address">
                                        </div>
                                        <div class="form-group">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <a href="Login" class="btn btn-block" style="background-color: peru ;color: #fff;"> Login </a>
                                                </div>
                                                <div class="col-lg-6">
                                                    <input type="submit" tabindex="4" class="btn btn-block" value="Register Now" style="background-color: peru ;color: #fff;" >
                                                </div>
                                            </div>
                                            <br>
                                        </div>
                                    </form>
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
