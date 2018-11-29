<%-- 
    Document   : Checkout
    Created on : Nov 29, 2018, 2:11:52 PM
    Author     : SarinratBeauty
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
        <title>Checkout</title>

    </head>
    <body style="background-color: darksalmon;color: #fff;font-family: 'Caveat', cursive;"s>
        <h1 class="mt-5 text-center">Check out</h1>
        <div class="container">
            <div class="row">
                <div class="col-8 ml-auto mr-auto">

                    <form action="Check" method="post" >
                        <div class="form-group">
                            <input name="creditNo" class="form-control" type="tel" pattern="\d*" maxlength="16" placeholder="Card Number" required>
                        </div>
                        <div class="form-group">
                            <input name="creditEx" class="form-control" type="tel" pattern="\d*" maxlength="4" placeholder="MM/YY" required>
                        </div>
                        <div class="form-group">
                            <input name="creditCVV" class="form-control" type="tel" pattern="\d*" maxlength="3" placeholder="CVV" required>
                        </div>
                        <div class="form-group text-center ">
                            <input type="submit" value="Confirm Checkout" class="btn" style="background-color: peru; color: #fff">
                        </div>
                    </form>
                    <div class="m-2 text-center">
                        <a href="ShowCart" style="color: #fff">Back</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
