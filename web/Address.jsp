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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
                        <h4>We would love to hear from you !</h4>
                    </div>
                </div>
                <div class="col-md-9">
                    <div class="contact-form">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="fname">First Name:</label>
                            <div class="col-sm-10">          
                                <input type="text" class="form-control" id="fname" placeholder="Enter First Name" name="fname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="lname">Last Name:</label>
                            <div class="col-sm-10">          
                                <input type="text" class="form-control" id="lname" placeholder="Enter Last Name" name="lname">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="tel">Tel.:</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="tel" placeholder="Enter Tel." name="tel">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="address">Address:</label>
                            <div class="col-sm-10">
                                <textarea class="form-control" rows="5" id="comment"></textarea>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>

        <form action="Thank" method="post">
            <div class="col-lg-12 text-center" >
                <input type="submit" class="btn px-5 py-2 mt-3"style="background-color: peru; color: #fff">
            </div>
        </form>

        <div class="m-2 text-center">
            <a href="Cart.jsp" style="color: #fff">Back</a>
        </div>


        <!--pop up Code-->
        <div class="popup" onclick="myFunction()">Click me!
            <span class="popuptext" id="myPopup">Thank You</span>
        </div>

    </body>
</html>
