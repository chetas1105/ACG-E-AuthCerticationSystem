<%@ page import="java.sql.*"%>
<%@page import="controller.DBConnector"%>

<%
	if(session.getAttribute("HODFirstName")==null){

		response.sendRedirect("HODLogin.jsp");
	}

%>
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1); 
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <title>HOD Dashboard</title>
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
			ResultSet rs1 = null;
	 		Connection conn = null;
	%>

	<%
			String query1 = "select * from allcertificates where ApplicationStatus =2";
			conn = DBConnector.getConnection();
			PreparedStatement ps=conn.prepareStatement(query1);  
			
			
			rs1 = ps.executeQuery();

			//rs1 = GetDataFromDB.validate(query1);
	%>
    <!-- Body content -->

    <div class="header-connect">
        <div class="container">
            <div class="cnt">
                <img style="margin-top: 0px;" src="assets/img/header10.jpg" alt="">
            </div>
        </div>
    </div>
    
    <h1>Welcome : <%= session.getAttribute("HODFirstName") %></h1>
    <button type="submit" class="btn btn-default" id="btnStudent" style="background-color:white;border: 1px solid #b31b1a;"><a href="LogotOffice">Logout</a></button>
    <div class="container mt-3">
			
			<table class="table table-bordered table-dark"
				class="table-responsive " style="background-color: #32383e;">
				<thead>
					<tr>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Enrollment Number</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Student Name</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Certificate Type</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Application Date</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Payment Status</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Details</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Accept</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Reject</th>
						
					</tr>
				</thead>
				<tbody>
					<%
						while (rs1.next()) {
					%>
					<tr>
						<td scope="row" style="color: #f7f1f1f5;text-align: center;"><%=rs1.getString(1)%></td>
						<td style="color: #f7f1f1f5;text-align: center;"><%=rs1.getString(2)%></td>
						<td style="color: #f7f1f1f5; text-align: center;"><%=rs1.getString(3)%></td>
						<td style="color: #f7f1f1f5; text-align: center;"><%=rs1.getString(4)%></td>
						
						<td style="color: #f7f1f1f5;text-align: center;">
							<% if (rs1.getString(5) != null) {%> 
							<% if (rs1.getString(5).equalsIgnoreCase("0")) {%>
							Payment Pending <%}%> 
							<% if (rs1.getString(5).equalsIgnoreCase("1")) {%>
							Payment Successful
							<%}%>  
						<% }%>
						</td>
						
						
						
						<td style="color: #f7f1f1f5; text-align: center;">
							
							 <button  class="btn btn-default  btn-lg float-right" id="btnStudent1" style="background-color:#cfd9e3;border: 1px solid #cfd9e3;">View Details</button>
						</td>
						<td style="color: #f7f1f1f5; text-align: center;">
							<form action="AcceptApplicationHOD" method="post">
							 <button  class="btn btn-default  btn-lg float-right" id="btnStudent1" style="background-color:#2ba14d;border: 1px solid #cfd9e3;"
							 type="submit" name="bt" value="<%=rs1.getString(1)%>">Accept </button>
							 </form>
						</td>
						<td style="color: #f7f1f1f5; text-align: center;">
							<form action="RejectApplicationHOD" method="post">
							 <button  class="btn btn-default  btn-lg float-right" id="btnStudent1" style="background-color:#2ba14d;border: 1px solid #cfd9e3;"
							 type="submit" name="bt1" value="<%=rs1.getString(1)%>">Reject Application </button>
							 </form>
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