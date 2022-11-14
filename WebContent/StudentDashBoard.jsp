<%@ page import="java.sql.*"%>
<%@page import="controller.DBConnector"%>

<%
	if(session.getAttribute("name")==null){

		response.sendRedirect("StudentLogin.jsp");
	}
	session.getAttribute("rollNumber");

%>
<%
	response.setHeader("Pragma","no-cache");
	response.setHeader("Cache-Control","no-store");
	response.setHeader("Expires","0");
	response.setDateHeader("Expires",-1); 
	%>

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
    <title>Student Dashboard</title>
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
	
	<%
			ResultSet rs1 = null;
	 		Connection conn = null;
	%>

	<%
			String query1 = "select * from allcertificates where RollNumber =?";
			conn = DBConnector.getConnection();
			PreparedStatement ps=conn.prepareStatement(query1);  
			ps.setString(1, (String)session.getAttribute("rollNumber"));
			
			rs1 = ps.executeQuery();

			//rs1 = GetDataFromDB.validate(query1);
	%>
    <div class="header-connect">
        <div class="container">
            <div class="cnt">
                <img style="margin-top: 0px;" src="assets/img/header10.jpg" alt="">
            </div>
        </div>
    </div>

   <div>
       <span><h1>Welcome : <%= session.getAttribute("name") %></h1></span>
       <button type="submit" class="btn btn-default  btn-lg float-right" id="btnStudent" style="background-color:white;border: 1px solid #b31b1a;"><a href="logout">Logout</a></button>
 	</div>
 	 <button type="submit" class="btn btn-default" class="btn btn-default  btn-lg float-right" id="btnStudent" style="background-color:white;border: 1px solid #b31b1a;"
                onclick="window.location.href='selectApplication.jsp'">Certificate Application</button>
 	
 	<div class="container mt-3">
			
			<table class="table table-bordered table-dark"
				class="table-responsive " style="background-color: #32383e;">
				<thead>
					<tr>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Enrollment Number</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Student Name</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Certificate Number</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Application Date</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Payment Status</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Application status</th>
						<th scope="col" style="text-align: center; color: #f7f1f1f5;">Download</th>
						
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
							<% if (rs1.getString(6) != null) {%> 
							<% if (rs1.getString(6).equalsIgnoreCase("0")) {%>
							<input class="iradio_square-yellow checked"><label>&nbsp;Application to Office</label>
							<%}%> 
							<% if (rs1.getString(6).equalsIgnoreCase("1")) {%>
							<input class="iradio_square-blue checked"><label>&nbsp;Accepted By Office</label>
							<%}%> 
							<% if (rs1.getString(6).equalsIgnoreCase("2")) {%>
							<input class="iradio_square-orange checked"><label>&nbsp;Accepted by HOD</label>
							<%}%> 
						<% }%>
						</td>
						
						<td style="color: #f7f1f1f5; text-align: center;">
							<% if (rs1.getString(6) != null) {%> 
							<% if (rs1.getString(5).equalsIgnoreCase("0")) {%>
							 <button  class="btn btn-default  btn-lg float-right" id="btnStudent1" style="background-color:#cfd9e3;border: 1px solid #cfd9e3;">Download</button>
							<%}%> 
							<% if (rs1.getString(5).equalsIgnoreCase("1")) {%>
							 <button class="btn btn-default  btn-lg float-right" id="btnStudent2" style="background-color:#7CFC00;border: 1px solid #cfd9e3;"><a href="download">Dowmload</a></button>
							 <form action="Download" method="post">
							 <button  class="btn btn-default  btn-lg float-right" id="btnStudent1" style="background-color:#2ba14d;border: 1px solid #cfd9e3;"
							 type="submit" name="bt1" value="<%=rs1.getString(8)%>">Download certi </button>
							 </form>
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
    
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	
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

</body>

</html>