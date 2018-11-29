<%-- 
    Document   : newIndex
    Created on : Nov 29, 2018, 1:21:24 AM
    Author     : FAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Balloons Market</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
        <style>
            body{
                height: 100vh;
                width: 100vw;
                overflow-x: hidden; 
                font-family: 'Caveat', cursive;
            }
            h1{
                font-family: 'Caveat', cursive;
            }
            h3{
                font-family: 'Caveat', cursive;
            }
            div{
                font-family: 'Caveat', cursive;
            }
            .carousel-item {
                height: 65vh;
                min-height: 300px;
                background: no-repeat center center scroll;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
        </style>
    </head>

    <body>
        <jsp:include page="include/Navbar.jsp" />
        <header>
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel mt-5">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <!--Slide-->
                <div class="carousel-inner" role="listbox">
                    <!-- Slide One - Set the background image for this slide in the line below -->
                    <div class="carousel-item active" style="background-image: url('images/slide/slide1.jpg')">

                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('images/slide/slide2.jpg')">

                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('images/slide/slide3.jpg')">

                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>

        <div class="container-fluid text-light" style="background-color: Peru  ">
            <div class="container text-center" style="background-color: peru">
                <img src="images/logo1.png">
                <h3 style="margin-bottom: 0">
                    Have a party Have a BALLOONS MARKET!
                </h3>   
            </div>
        </div>


        <div class="container-fluid" style="background-color: darksalmon">
            <div class="container">
                <p class="m-0 text-center text-white">Copyright &copy; Balloons Market</p>
            </div>
        </div>

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    </body>

</html>
