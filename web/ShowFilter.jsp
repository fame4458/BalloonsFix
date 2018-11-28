<%-- 
    Document   : ShowFilter
    Created on : Nov 29, 2018, 1:22:05 AM
    Author     : FAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
        <title>JSP Page</title>
    </head>

    <body style="font-family: 'Caveat', cursive;">
        <jsp:include page="include/Navbar.jsp" />
        <br>
        <br>
        <br>
        <div class="container">
            <h1 class="text-center mt-5">Filter</h1>
            <div class="container">
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
                                    <form action="cart" method="post">
                                        <div class="row">
                                            <div class="col-6">
                                                <input type="number" name="quatity" value="1" min="1" class="form-control">
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
