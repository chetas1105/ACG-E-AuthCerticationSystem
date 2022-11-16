<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
response.setContentType("application/pdf");
Document document = new Document();
PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
document.open();
//Change from here
Paragraph p = new Paragraph();
p.add("Text 1");
p.setAlignment(Element.ALIGN_CENTER);
document.add(p);
Paragraph p2 = new Paragraph();
p2.add("Text 2"); //no alignment
document.add(p2);
Font f = new Font();
f.setStyle(Font.BOLD);
f.setSize(8);
document.add(new Paragraph("This is my paragraph 3", f));
document.close();
%>
</body>
</html>