<%-- 
    Document   : History
    Created on : Nov 29, 2018, 8:02:10 PM
    Author     : POM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Caveat:400,700" rel="stylesheet">
        <title>History</title>
    </head>
     <body style="background-color: darksalmon; color: #fff;font-family: 'Caveat', cursive;">
        <div class="container">

            <h1 class="m-5 text-center">Your History</h1>

            <table class="table mt-5">
                <thead  style="background-color: peru">
                    <tr>
                        <th scope="col">Image</th>
                        <th scope="col">Product Name</th>
                        <th scope="col">Quantity</th>
                        <th scope="col">Price</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </tr>
                </thead>
                <tbody style="background-color: #fff; color: black">
                    <c:set var="items" value="${sessionScope.cart.lineItems}" />
                    <c:forEach items="${cart.lineItems}" var="line" varStatus="vs">
                        <tr>
                            <td><img height="200px" src="${line.product.productphoto}"></td>
                            <td>${line.product.productname}</td>
                            <td>${line.quanlity}</td>
                            <td>${line.totalPrice}</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                        <tr>
                            <td></td>
                            <td></td>
                            <td>Total Price</td>
                            <td>${sessionScope.cart.totalPrice}</td>
                            <td></td>
                            <td></td>
                        </tr>
                </tbody>
            </table>

            <div class="m-2 text-center">
                <a href="newIndex" style="color: #fff">Back</a>
            </div>

        </div>
    </body>

</html>
