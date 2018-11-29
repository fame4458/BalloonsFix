<%-- 
    Document   : Celebrate
    Created on : Nov 29, 2018, 1:26:34 AM
    Author     : FAME
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balloons Market</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
    </head>
    <body style="font-family: 'Caveat', cursive;">
        <jsp:include page="include/Navbar.jsp" />
        <br>

        <div class="container my-5">
            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-10 col-lg-5 ml-auto" >
                        <form class="card card-sm" action="Search" method="post">
                            <div class="card-body row no-gutters align-items-center">
                                <div class="col-auto col-1">
                                    <i class="fas fa-search h4 text-body"></i>
                                </div> 
                                <div class="col" >
                                    <input class="form-control form-control-lg form-control-borderless" style="background-color:bisque"  type="search" placeholder="Search our balloons" name="name">
                                </div>

                                <select name="type" style="height: 45px; margin-left: 5px; margin-right: 5px; background-color: bisque">
                                    <option value="Type">Type</option>
                                    <option value="party">Party</option>
                                    <option value="birth">Birthday</option>
                                    <option value="celebrate">Celebrate</option>
                                </select>


                                <div class="col-auto ">
                                    <button class="btn btn-lg" style="background-color: peru; color: #fff" type="submit">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>   
                </div>
            </div>

            <div class="container">
                <h1 class="text-center mt-5">Celebrate set</h1>
                <div class="row mt-2">
                    <c:forEach items="${product}" var="p" varStatus="vs">
                        <div class="col-lg-4 col-sm-6 portfolio-item mt-5">
                            <div class="card h-100">
                                <a href="#"><img class="card-img-top rounded" height="400px" src="${p.productphoto}"></a>
                                <div class="card-body ">
                                    <div class="col-12 mb-3">
                                        <h4 class="card-title">
                                            ${p.productname}
                                        </h4>
                                        <p class="card-text">${p.productdescription}</p>
                                    </div>
                                    <form action="AddToCart" method="post">
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="hidden" value="${p.productid}" name="productid" />
                                                <h4>${p.productprice} THB</h4>
                                            </div>
                                            <div class="col-6">
                                                <input type="submit" value="buy" class="btn btn-block" style="background-color: darksalmon;color: #fff;">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
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
