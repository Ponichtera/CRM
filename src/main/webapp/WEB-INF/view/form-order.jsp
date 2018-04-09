﻿<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Order Card</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/favicon.ico"/>
    <!-- Bootstrap core CSS-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/bootstrap/css/bootstrap.min.css"
          rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/font-awesome/css/font-awesome.min.css"
          rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/css/sb-admin.css"
          rel="stylesheet">
</head>

<body class="bg-dark">
<div class="container">
    <div class="card card-register mx-auto mt-5">
        <div class="card-header">Order information card</div>
        <div class="card-body">
            <form:form commandName="customersDto">
            <%--<form:form action="saveOrder" modelAttribute="order" method="POST">--%>

            <%--<!-- need to associate this data with customer id -->--%>
            <%--<form:hidden path="id"/>--%>

            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-10">
                        <label for="exampleInputName">Select existing customer</label>
                        <form:select path="customers">
                            <form:option value="NONE" label="--- Select ---" />
                            <form:options items="${customersAvailable}" />
                        </form:select>
                        <%--<input class="form-control" id="exampleInputName" type="" placeholder="Select the customer"/>--%>
                </div>
                    <div class="col-md-2">
                        <label for="exampleInputName">or add new</label>
                    <form action="/customer/showFormForAdd" method="get">
                        <input type="submit" value="Add" class="btn btn-primary btn-block"
                               name="Submit" id="frm1_submit" />
                    </form>
                </div>
                    <%--<form:checkboxes path="customers" items="${customersAvailable}"/>--%>


    <%--<form:select path = "customers" items = "${customersAvailable}" />--%>




                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Email address</label>
                        <input class="form-control" id="exampleInputEmail1" type="email"
                                    aria-describedby="emailHelp"
                                    placeholder="Enter email" />
                    </div>
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Phone number</label>
                        <input class="form-control" type="text"
                               placeholder="Enter phone number"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Street</label>
                        <input class="form-control" type="text"
                               placeholder="Enter street"/>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Postal code</label>
                        <input class="form-control" type="text"
                               placeholder="Enter postal code"/>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">City</label>
                        <input class="form-control" type="text" aria-describedby="emailHelp"
                               placeholder="Enter city"/>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Country</label>
                        <input class="form-control" type="text"
                               placeholder="Enter country"/>
                    </div>
                </div>
            </div>



            <%--<div class="form-group">--%>
            <%--<div class="form-row">--%>
            <%--<div class="col-md-6">--%>
            <%--<label for="exampleInputPassword1">Password</label>--%>
            <%--<input class="form-control" id="exampleInputPassword1" type="password"--%>
            <%--placeholder="Password">--%>
            <%--</div>--%>
            <%--<div class="col-md-6">--%>
            <%--<label for="exampleConfirmPassword">Confirm password</label>--%>
            <%--<input class="form-control" id="exampleConfirmPassword" type="password"--%>
            <%--placeholder="Confirm password">--%>
            <%--</div>--%>
            <%--</div>--%>
            <%--</div>--%>
            </form:form>
        <input type="submit" value="Save" class="btn btn-primary btn-block"/>
        <%--</form:form>--%>
        <%--<div class="text-center">--%>
        <%--<a class="d-block small mt-3" href="login.html">Login Page</a>--%>
        <%--<a class="d-block small" href="forgot-password.html">Forgot Password?</a>--%>
        <%--</div>--%>
    </div>
</div>
</div>
<!-- Bootstrap core JavaScript-->
<script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Core plugin JavaScript-->
<script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
