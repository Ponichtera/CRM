<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Customer Card</title>
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
        <div class="card-header">User information card</div>
        <div class="card-body">
            <form:form action="saveCustomer" modelAttribute="customer" method="POST">
                <!-- need to associate this data with customer id -->
                <form:hidden path="id"/>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputName">First name</label>
                            <form:input class="form-control" id="exampleInputName" type="text"
                                        placeholder="Enter first name" path="firstName" required="required"/>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputLastName">Last name</label>
                            <form:input class="form-control" id="exampleInputLastName" type="text"
                                        placeholder="Enter last name" path="lastName" required="required"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Email address</label>
                            <form:input class="form-control" id="exampleInputEmail1" type="email"
                                        placeholder="Enter email" path="email" required="required"/>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Phone number</label>
                            <form:input class="form-control" type="text" placeholder="Enter phone number" path="phone"
                                        required="required"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Street</label>
                            <form:input class="form-control" type="text" placeholder="Enter street" path="addressStreet"
                                        required="required"/>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Postal code</label>
                            <form:input class="form-control" type="text" placeholder="Enter postal code"
                                        path="addressPostal" required="required"/>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="form-row">
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">City</label>
                            <form:input class="form-control" type="text" placeholder="Enter city" path="addressCity"
                                        required="required"/>
                        </div>
                        <div class="col-md-6">
                            <label for="exampleInputEmail1">Country</label>
                            <form:input class="form-control" type="text" placeholder="Enter country"
                                        path="addressCountry" required="required"/>
                        </div>
                    </div>
                </div>
                <input type="submit" value="Save" class="btn btn-primary btn-block"/>
            </form:form>
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
