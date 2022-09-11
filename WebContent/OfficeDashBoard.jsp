<%@ page import="java.sql.*"%>
<%@page import="controller.GetDataFromDB"%>

<%
	if(session.getAttribute("OfficeName")==null){
		response.sendRedirect("OfficeLogin.jsp");
	}

%>
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1); 
%>


<!DOCTYPE html>

<html class="no-js">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Office Dashboard</title>
    <meta name="description" content="Apartment Management System">
    <meta name="author" content="Chetas">
    <meta name="keyword" content="Apartment System, complaint System, Java">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

    
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
			ResultSet rs1 = null;
	%>

	<%
			String query1 = "select * from bonafide";

			rs1 = GetDataFromDB.validate(query1);
	%>

    <div class="header-connect">
        <div class="container">
            <div class="cnt">
                <img style="margin-top: 0px;" src="assets/img/header10.jpg" alt="">
            </div>
        </div>
    </div>
     <h1  align="center" >Student DashBoard</h1>
    <h1>Welcome : <%= session.getAttribute("OfficeName") %></h1>
    <button type="submit" class="btn btn-default" id="btnStudent" style="background-color:white;border: 1px solid #b31b1a;"><a href="LogotOffice">Logout</a></button>
    <div class="container mt-3">
			
			<table class="table table-bordered table-dark"
				class="table-responsive " style="background-color: #32383e;">
				<thead>
					<tr>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Roll Number</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">First Name</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Last Name</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Mobile Number</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Date of Birth</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Passout Year</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Semester</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Application Status</th>
					</tr>
				</thead>
				<tbody>
					<%
						while (rs1.next()) {
					%>
					<tr>
						<td scope="row" style="color: #f7f1f1f5;"><%=rs1.getString(1)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(2)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(3)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(4)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(5)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(6)%></td>
						<td style="color: #f7f1f1f5;"><%=rs1.getString(7)%></td>
						<td style="color: #f7f1f1f5;">
							<% if (rs1.getString(8) != null) {%> 
							<% if (rs1.getString(8).equalsIgnoreCase("0")) {%>
							<input class="iradio_square-yellow checked"><label>&nbsp;Application to Desk</label>
							<%}%> 
							<% if (rs1.getString(8).equalsIgnoreCase("1")) {%>
							<input class="iradio_square-blue checked"><label>&nbsp;Accepted by Office</label>
							<%}%> 
							<% if (rs1.getString(8).equalsIgnoreCase("2")) {%>
							<input class="iradio_square-orange checked"><label>&nbsp;Accepted by HOD</label>
							<%}%> 
						<% }%>
						</td>

					</tr>
					<%
						}
					%>
				</tbody>
			</table>
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