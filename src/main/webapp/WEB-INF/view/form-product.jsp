<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Product Card</title>
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
        <div class="card-header">Product information card</div>
        <div class="card-body">

            <form:form action="saveProduct" modelAttribute="product" method="POST">

            <!-- need to associate this data with customer id -->
            <form:hidden path="id"/>

            <div class="form-group">
                <div class="form-row">
                        <label for="exampleInputName">Product name</label>
                        <form:input class="form-control" id="exampleInputName" type="text"
                                    aria-describedby="nameHelp"
                                    placeholder="Enter product name" path="name"  required="required"/>
                </div>
            </div>
            <div class="form-group">
                <div class="form-row">
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Price</label>
                        <form:input class="form-control" id="exampleInputEmail1" type="number"
                                    aria-describedby="emailHelp"
                                    placeholder="Enter price" path="price"  required="required"/>
                    </div>
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Quantity</label>
                        <form:input class="form-control" type="number"
                               placeholder="Enter quantity" path="quantity"  required="required"/>
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
