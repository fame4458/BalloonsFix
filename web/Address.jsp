<%-- 
    Document   : Address
    Created on : Nov 29, 2018, 1:27:42 AM
    Author     : FAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">        
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
        <title>Address</title>

    </head>
    <body style="background-color: darksalmon;color: #fff;font-family: 'Caveat', cursive;">
        <br>
        <br>
        <br>
        <div class="container contact">
            <div class="row">
                <div class="col-md-3" style="background-color: peru">
                    <div class="contact-info">
                        <br>
                        <br>
                        <img src="https://image.ibb.co/kUASdV/contact-image.png" alt="image"/>
                        <br>
                        <br>
                        <h2>Address</h2>
                        <br>
                        <h5>We would love to hear from you !</h5>
                    </div>
                </div>
                
                <div class="col-md-9">
                    <div class="contact-form">
                        <div class="form-group">
                            <div class="col-sm-10">          
                                First Name:<input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">          
                                Last Name:<input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                Tel.:<input type="text" class="form-control" id="tel" maxlength="10" placeholder="Enter Tel." name="tel" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-10">
                                Address:<textarea class="form-control" rows="5" id="comment"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <form action="Thank" method="post">
            <div class="col-lg-12 text-center" >
                <input type="submit" value="Confirm" class="btn px-5 py-2 mt-3" style="background-color: peru; color: #fff">
            </div>
        </form>

        <div class="m-2 text-center">
            <a href="ShowCart" style="color: #fff">Back</a>
        </div>




    </body>
</html>
