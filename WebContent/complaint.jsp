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
    <title> Information fill</title>
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
</head>

<body>

    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- Body content -->

    <div class="header-connect">
        <div class="container">
            <div class="row">
                <div class="col-md-5 col-sm-8  col-xs-12">
                    <div class="header-half header-call">
                        <p>
                            <span><i class="pe-7s-call"></i>+91 8888879839</span>
                            <span><i class="pe-7s-mail"></i> CR@company.com</span>
                        </p>
                    </div>
                </div>
                <div class="col-md-2 col-md-offset-5  col-sm-3 col-sm-offset-1  col-xs-12">
                    <div class="header-half header-social">
                        <div class="button navbar-right">
                            <button class="btn btn-primary" id="hindi">Hindi</button>
                            <button class="btn btn-primary" id="english">English</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
                <div class="button navbar-right">
                    <button class="navbar-btn nav-button wow bounceInRight login"
                        onclick=" window.open('register.html')" data-wow-delay="0.45s">Admin Login</button>
                    <button class="navbar-btn nav-button wow fadeInRight" onclick=" window.open('securityLogin.html')"
                        data-wow-delay="0.48s">Security Login</button>
                </div>
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

            <div class="col-md-12">
                <div class="box-for overflow">
                    <div class="col-md-12 col-xs-12 register-blocks">
                        <h2>Register Complaint : </h2>
                        <form action="" method="post">
                            <div class="form-group">
                                <label for="name">Select City : </label>
                                <select id="lunchBegins" class="selectpicker" data-live-search="true"
                                    data-live-search-style="begins" title="- City -">

                                    <option>New york, CA</option>
                                    <option>Paris</option>
                                    <option>Casablanca</option>
                                    <option>Tokyo</option>
                                    <option>Marraekch</option>
                                    <option>kyoto , shibua</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Select Apartments : </label>
                                <select id="lunchBegins" class="selectpicker" data-live-search="true"
                                    data-live-search-style="begins" title="- Apartments -">

                                    <option>New york, CA</option>
                                    <option>Paris</option>
                                    <option>Casablanca</option>
                                    <option>Tokyo</option>
                                    <option>Marraekch</option>
                                    <option>kyoto , shibua</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Full Name : </label>
                                <input type="text" class="form-control" id="name">
                            </div>
                            <div class="form-group">
                                <label for="email">Email : </label>
                                <input type="text" class="form-control" id="email">
                            </div>
                            <div class="form-group">
                                <label for="address">Address : </label>
                                <input type="text" class="form-control" id="address" required>
                            </div>
                            <div class="form-group">
                                <label for="mobile">Mobile No : </label>
                                <input type="mobile number" class="form-control" id="mobile" required>
                            </div>
                            <div class="form-group">
                                <label for="mobile">OTP : </label>
                                <input type="otp" class="form-control" id="otp" required>
                            </div>
                            <div class="form-group">
                                <label for="mobile">Is Facility Missing : </label>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
                                    <label class="form-check-label" for="flexSwitchCheckDefault">Yes</label>
                                </div>
                                <div class="form-check form-switch">
                                    <input class="form-check-input" type="checkbox" id="flexSwitchCheckDefault">
                                    <label class="form-check-label" for="flexSwitchCheckDefault">No</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name">Missing Facilities : </label>
                                <select id="lunchBegins" class="selectpicker" data-live-search="true"
                                    data-live-search-style="begins" title="- Facilities -">

                                    <option>New york, CA</option>
                                    <option>Paris</option>
                                    <option>Casablanca</option>
                                    <option>Tokyo</option>
                                    <option>Marraekch</option>
                                    <option>kyoto , shibua</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="complaint">Your Complaint : </label>
                                <textarea class="form-control" rows="5" id="comment" name="text" required></textarea>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-default">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>



    <!-- Footer area-->
    <div class="footer-area">

        <div class=" footer">
            <div class="container">
                <div class="row">

                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>About us </h4>
                            <div class="footer-title-line"></div>

                            <img src="assets/Image/logo1.png" alt="" class="wow pulse" data-wow-delay="1s">
                            <p>Lorem ipsum dolor cum necessitatibus su quisquam molestias. Vel unde, blanditiis.</p>
                            <ul class="footer-adress">
                                <li><i class="pe-7s-map-marker strong"> </i>Solapur 413006</li>
                                <li><i class="pe-7s-mail strong"> </i> CR@company.com</li>
                                <li><i class="pe-7s-call strong"> </i> +91 8888879839</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Quick links </h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-menu">
                                <li><a href="index.html">Home</a> </li>
                                <li><a href="property-1.html">Appartment</a> </li>
                                <li><a href="contact.html">Contact us</a></li>
                                <li><a href="faq.html">fqa</a> </li>
                                <li><a href="faq.html">Terms </a> </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer">
                            <h4>Location</h4>
                            <div class="footer-title-line"></div>
                            <ul class="footer-blog">
                                <iframe
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3801.6681374818913!2d75.9212589154196!3d17.665870087912232!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc5da682daaef63%3A0x2b56b15a49ec35a9!2sWIT%20Boys%20Hostel%20Rd%2C%20Sakhar%20Peth%2C%20Solapur%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1653277526104!5m2!1sen!2sin"
                                    width="270" height="350" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 wow fadeInRight animated">
                        <div class="single-footer news-letter">
                            <h4>Stay in touch</h4>
                            <div class="footer-title-line"></div>
                            <p>Lorem ipsum dolor sit amet, nulla suscipit similique quisquam molestias. Vel unde,
                                blanditiis.</p>

                            <form>
                                <div class="input-group">
                                    <input class="form-control" type="text" placeholder="E-mail ... ">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary subscribe" type="button"><i
                                                class="pe-7s-paper-plane pe-2x"></i></button>
                                    </span>
                                </div>
                                <!-- /input-group -->
                            </form>

                            <div class="social pull-right">
                                <ul>
                                    <li><a class="wow fadeInUp animated" href="https://twitter.com/kimarotec"><i
                                                class="fa fa-twitter"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://www.facebook.com/kimarotec"
                                            data-wow-delay="0.2s"><i class="fa fa-facebook"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://plus.google.com/kimarotec"
                                            data-wow-delay="0.3s"><i class="fa fa-google-plus"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec"
                                            data-wow-delay="0.4s"><i class="fa fa-instagram"></i></a></li>
                                    <li><a class="wow fadeInUp animated" href="https://instagram.com/kimarotec"
                                            data-wow-delay="0.6s"><i class="fa fa-dribbble"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="footer-copy text-center">
            <div class="container">
                <div class="row">
                    <div class="pull-left">
                        <span> &copy; <a href="#">Technologies 2022</a> All rights reserved
                        </span>
                    </div>
                    <div class="bottom-menu pull-right">
                        <ul>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.2s">Home</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.4s">Faq</a></li>
                            <li><a class="wow fadeInUp animated" href="#" data-wow-delay="0.6s">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>

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