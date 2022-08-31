<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% session.getAttribute("rollNumber");%>
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
    <title>Bonafide Application </title>
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

 <!-- Body content -->
<input type="hidden" id="status1"  value="<%= request.getAttribute("status1") %>">
    <div class="header-connect">
        <div class="container">
            <div class="cnt">
                <img style="margin-top: 0px;" src="assets/img/header10.jpg" alt="">
            </div>
        </div>
    </div>
   	<div class="register-area" class="form-inline" style="background-color: rgb(249, 249, 249);">
        <div class="container">

            <div class="col-md-12">
                <div class="box-for overflow">
                    <div class="col-md-12 col-xs-12 register-blocks">
                        <h2>Bonfide Certificate Application  : </h2>
                        <form action="bonfideApplication" method="post">
                            <div class="form-group">
                                <label for="name">First Name : </label>
                                <input type="text" class="form-control" id="fname" name="fname">
                            </div>
                            <div class="form-group">
                                <label for="name">Last Name : </label>
                                <input type="text" class="form-control" id="lname" name="lname">
                            </div>
                            <div class="form-group">
                                <label for="name">Mobile Number : </label>
                                <input type="text" class="form-control" id="lname" name="contact">
                            </div>
                            <div class="form-group">
                                <label for="mobile">Date of Birth : </label>
                               <input id="text" class="form-control" type='date' min='1899-01-01' max='2000-13-13' required name="dob"></input>
                            </div>
                            <div class="form-group">
                                <label for="name">Passout Year : </label>
                                <select id="lunchBegins" class="selectpicker" data-live-search="true"
                                    data-live-search-style="begins" title="- Year -" name="year">

                                    <option>2016</option>
                                    <option>2017</option>
                                    <option>2018</option>
                                    <option>2019</option>
                                    <option>2020</option>
                                    <option>2021</option>
                                    <option>2022</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="name">Semester : </label>
                                <select id="lunchBegins" class="selectpicker" data-live-search="true"
                                    data-live-search-style="begins" title="- Semester -" name="semester">
                                    <option>Winter</option>
                                    <option>Summer</option>
                                   
                                </select>
                            </div>
                      
                            
                            <div class="text-center">
                                <button type="submit" class="btn btn-default">Apply</button>
                            </div>
                        </form>
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
    
    <link rel="stylesheet" href="alert/dist/sweetalert.css">
    <script type="text/javascript">
    var status = document.getElementById("status1").value;
    if(status=="failed"){
    	swal("Sorry","Application Failed","error");
    }
    else if(status=="sucesss"){
    	swal("Done","Application Successful","success");
    }
    </script>
    
    <script >
    
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();

    if (dd < 10) {
       dd = '0' + dd;
    }

    if (mm < 10) {
       mm = '0' + mm;
    } 
        
    today = yyyy + '-' + mm + '-' + dd;
    document.getElementById("datefield").setAttribute("max", today);
    
    
    
    </script>
    <script>
    var i, currentYear, startYear, endYear, newOption, dropdownYear;
    dropdownYear = document.getElementById("dropdownYear");
    currentYear = (new Date()).getFullYear();
    startYear = currentYear - 4;
    endYear = currentYear + 3;

    for (i=startYear;i<=endYear;i++) {
      newOption = document.createElement("option");
      newOption.value = i;
      newOption.label = i;
    	if (i == currentYear) {
    		newOption.selected = true;
    	}
      dropdownYear.appendChild(newOption);
    }
    </script>
    
    

</body>

</html>