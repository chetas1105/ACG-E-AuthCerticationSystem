<!DOCTYPE html>

<html class="no-js">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Office Login</title>
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
	
<%

response.setHeader("Pragma","no-cache");

response.setHeader("Cache-Control","no-store");

response.setHeader("Expires","0");

response.setDateHeader("Expires",-1);



%>

    <!-- Body content -->
    <input type="hidden" id="status"  value="<%= request.getAttribute("status") %>">

    <div class="header-connect">
        <div class="container">
            <div class="cnt">
                <img style="margin-top: 0px;" src="assets/img/header10.jpg" alt="">
            </div>
        </div>
    </div>

    <div class=" register-area" style="background-color: rgb(249, 249, 249);">
        <div class="container">



            <div class="col-md-6">
                <div class="box-for overflow">
                    <div class="col-md-12 col-xs-12 login-blocks">
                        <h2>Office Login : </h2>
                        <form action="OfficeLogin" method="POST">
                            <div class="form-group">
                                <label for="email">User id</label>
                                <input type="text" class="form-control" id="userid" name="officeUserId">
                            </div>
                            <div class="form-group">
                                <label for="password">Password</label>
                                <input type="password" class="form-control" id="password" name="officePassword">
                            </div>
                            <div class="forgot">
                                <a href="forgotPasswordOffice.jsp">Forgot Password ?</a>
                            </div>

                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-default"> Log in</button>
                    </div>

                    </form>
                    <br>
                </div>

            </div>
        </div>

    </div>

    </div>
    </div>

    <!-- Footer area-->


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
    
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    var status = document.getElementById("status").value;
    if(status=="failed"){
    	swal("Sorry","Invalid Credentials ","error");
    }
    else if(status=="InvalidUserId"){
    	swal("Sorry","User Id can't be empty","error");
    }
    else if(status=="InvalidPassword"){
    	swal("Sorry","Password can't be empty","error");
    }
    else if(status=="resetSuccess"){
    	swal("Done","Password Upadate Successfully","success");
    }
    else if(status==""){
    	swal("Sorry!","Password Updatation Failed","error");
    }
    </script>

</body>

</html>