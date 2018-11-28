<%-- 
    Document   : Cart
    Created on : Nov 29, 2018, 1:20:38 AM
    Author     : FAME
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Balloons Market</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">

    </head>
    <body style="background-color: darksalmon; color: #fff;font-family: 'Caveat', cursive;">
        <h1 class="m-5 text-center">Your Cart</h1>

        <table class="table mt-5">
            <thead  style="background-color: peru">
                <tr>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Quantity</th>
                    <th scope="col">Price</th>
                </tr>
            </thead>
            <tbody style="background-color: #fff; color: black">
            <c:set var="items" value="${sessionScope.cart.lineItems}" />
            <c:forEach items="${cart.lineItems}" var="line" varStatus="vs">
                <tr>
                    <td><img height="200px" src="${line.product.productphoto}"></td>
                    <td>${line.product.productname}</td>
                    <td>${line.quanlity}</td>
                    <td>${line.product.productprice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="col-lg-12 text-center">
        <form action="Address" method="post">
            <input type="submit" name="check" tabindex="4" class="btn px-5 py-2 mt-3" 
                   value="Check Out" style="background-color: peru ;color: #fff;" >
        </form>

    </div>

    <div class="m-2 text-center">
        <a href="index.html" style="color: #fff">Back</a>
    </div>

</body>

</html>
