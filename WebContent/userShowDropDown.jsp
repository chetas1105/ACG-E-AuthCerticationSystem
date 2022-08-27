<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Drop Down</title>
    <meta name="description" content="Apartment Management System">
    <meta name="author" content="Chetas">
    <meta name="keyword" content="Apartment System, complaint System, Java">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
    <link rel="icon" href="favicon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/fontello.css">
    <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
    <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
    <link href="assets/css/animate.css" rel="stylesheet" media="screen">
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/icheck.min_all.css">
    <link rel="stylesheet" href="assets/css/price-range.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.css">
    <link rel="stylesheet" href="assets/css/owl.theme.css">
    <link rel="stylesheet" href="assets/css/owl.transitions.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css">


    <style>
        * {
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            color: #333;
            font-size: 13px;
            margin: 0;

        }

        input,
        textarea,
        select,
        button {
            font-family: arial;
            color: #333;
            font-size: 14px;
        }

        p,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        ul {
            margin: 0;
        }

        img {
            max-width: 100%;
        }

        ul {
            padding-left: 0;
            margin-bottom: 0;
        }

        a:hover {
            text-decoration: none;
        }

        :focus {
            outline: none;
        }

        .wrapper {
            min-height: 100vh;
            background-size: cover;
            background-repeat: no-repeat;
            display: flex;
            align-items: center;
        }

        .inner {
            padding: 20px;
            background: #fff;
            max-width: 850px;
            margin: auto;
            display: flex;
        }

        .inner .image-holder {
            width: 50%;
        }

        .inner form {
            width: 50%;
            padding-top: 36px;
            padding-left: 45px;
            padding-right: 45px;
        }

        .inner h3 {
            text-transform: uppercase;
            font-size: 25px;
            text-align: center;
            margin-bottom: 28px;
        }

        .form-group {
            display: flex;
        }

        .form-group input {
            width: 50%;
        }

        .form-group input:first-child {
            margin-right: 25px;
        }

        .form-wrapper {
            position: relative;
        }

        .form-wrapper i {
            position: absolute;
            bottom: 9px;
            right: 0;
        }

        .form-control {
            border: 1px solid #333;
            border-top: none;
            border-right: none;
            border-left: none;
            display: block;
            width: 100%;
            height: 30px;
            padding: 0;
            margin-bottom: 25px;
        }

        .form-control::-webkit-input-placeholder {
            font-size: 14px;
            color: gray;
            font-family: arial;
        }

        select {
            font-size: 14px;
            font-family: arial;
            cursor: pointer;
            padding-left: 20px;
            color: gray;
        }

        select option[value=""][disabled] {
            display: none;
        }

        button {
            border: none;
            width: 164px;
            height: 51px;
            margin: auto;
            margin-top: 40px;
            cursor: pointer;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 0;
            background: #333;
            font-size: 15px;
            color: #fff;
        }

        button:hover {
            background: or;
        }

        @media (max-width: 767px) {
            .inner {
                display: block;
            }

            .inner .image-holder {
                width: 100%;
            }

            .inner form {
                width: 100%;
                padding: 40px 0 30px;
            }

            button {
                margin-top: 60px;
            }
        }
    </style>
</head>

<body>


    <!-- Body content -->


    <!--End top header -->

    <nav class="navbar navbar-default ">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navigation">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><img src="assets/Image/logo1.png" alt=""></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse yamm" id="navigation">

                <ul class="main-nav nav navbar-nav navbar-right">
                    <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="index.html">Home</a></li>
                    <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="complaint.html">Register a
                            Complaints</a>
                    </li>
                    <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                        <a href="properties.html" class="dropdown-toggle active" data-toggle="dropdown"
                            data-hover="dropdown" data-delay="200">Apartments <b class="caret"></b></a>
                        <ul class="dropdown-menu navbar-nav">
                            <li>
                                <a href="property-1.html">Appartment 1</a>
                            </li>
                            <li>
                                <a href="property-1.html">Appartment 2</a>
                            </li>
                            <li>
                                <a href="property-1.html">Appartment 3</a>
                            </li>
                            <li>
                                <a href="property-1.html">Appartment 4</a>
                            </li>

                        </ul>
                    </li>




                    <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="contact.html">Contact Us</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <!-- End of nav bar -->

    <!-- register-area -->
    <div class="register-area" class="form-inline" style="background-color: rgb(249, 249, 249);">
        <div class="container">
            `
            <div class="col-md-12">
                <div class="box-for overflow">
                    <div class="col-md-12 col-xs-12 register-blocks">
                        <h2>Select Certificate : </h2>
                        <form action="">

                            <div class="form-wrapper">
                                <select name="" id="certificate" class="form-control">
                                    <option value="" disabled selected>Gender</option>
                                    <option value="Bonafide">Bonafide</option>
                                    <option value="Attempts">Attempts</option>
                                    <option value="Character">Character</option>ion>
                                    <option value="Hostel">Hostel</option>
                                    <option value="Expenditure">Expenditure</option>
                                    <option value="MCI">MCI</option>
                                </select>
                            </div>

                            <button onclick="getValue()">
                                Get
                            </button>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>




    <script src="js/main.js"></script>
    <script src="assets/js/modernizr-2.6.2.min.js"></script>

    <script src="assets/js/jquery-1.10.2.min.js"></script>
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bootstrap-select.min.js"></script>
    <script src="assets/js/bootstrap-hover-dropdown.js"></script>

    <script src="assets/js/easypiechart.min.js"></script>
    <script src="assets/js/jquery.easypiechart.min.js"></script>

    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/wow.js"></script>

    <script src="assets/js/icheck.min.js"></script>
    <script src="assets/js/price-range.js"></script>

    <script src="assets/js/main.js"></script>

</body>

</html>