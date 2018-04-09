﻿<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pl">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>My little CRM</title>
    <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/favicon.ico"/>
    <!-- Bootstrap core CSS-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Page level plugin CSS-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/css/sb-admin.css" rel="stylesheet">
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav"><a class="navbar-brand" href="/home/">My little CRM</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/home/">
                    <em class="fa fa-fw fa-dashboard"></em><span class="nav-link-text"> Home</span></a> </li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/customer/list">
                    <em class="fa fa-fw fa-user-circle"></em><span class="nav-link-text"> Customers</span></a></li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/product/list">
                    <em class="fa fa-fw fa-puzzle-piece"></em><span class="nav-link-text"> Products</span></a></li>

            <li class="nav-item" data-toggle="tooltip" data-placement="right">
                <a class="nav-link" href="/orders/list">
                    <em class="fa fa-fw fa-shopping-cart"></em><span class="nav-link-text"> Orders</span></a></li>
        </ul>
        <ul class="navbar-nav sidenav-toggler">
            <li class="nav-item">
                <a class="nav-link text-center" id="sidenavToggler">
                    <i class="fa fa-fw fa-angle-left"></i>
                </a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                    <i class="fa fa-fw fa-sign-out"></i>Logout</a>
            </li>
        </ul>
    </div>
</nav>
<div class="content-wrapper">
    <div class="container-fluid">
        <div class="row">
            <div class="col-8">
                <!-- Card Columns Example Social Feed-->
                <div class="card-body">
                    <i class="fa fa-newspaper-o"></i> News Feed</div>
                <hr class="mt-2">
                <div>
                    <!-- Example Social Card-->
                    <div class="card mb-16">
                        <a href="#">
                            <img class="card-img-top img-fluid w-100" src="${pageContext.request.contextPath}/resources/The-Google-Analytics-Dashboard-Hero-Resize-1.webp" alt="">
                        </a>
                        <div class="card-body">
                            <h6 class="card-title mb-1"><a href="#">Marcin Ponichtera</a></h6>
                            <p class="card-text small">Site is still in development. Although it's looking pretty good today!
                            </p>
                        </div>
                    </div>
                    <!-- Example Social Card-->            <!-- Example Social Card-->
                    <!-- Example Social Card-->          </div>
                <!-- /Card Columns-->
            </div>
        </div>
        <!-- Example DataTables Card-->    </div>
    <footer class="sticky-footer">
        <div class="container">
            <div class="text-center">
                <small>Copyright © ponichtera.pl 2018</small>
            </div>
        </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="#">Logout</a>
                </div>
            </div>
        </div>
    </div>
    <!-- Bootstrap core JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/chart.js/Chart.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/datatables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/js/sb-admin-datatables.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/startbootstrap-sb-admin-gh-pages/js/sb-admin-charts.min.js"></script>
</div>
</body>

</html>
