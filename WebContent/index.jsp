<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
<div class="container">
<div class="row">
<div class="col-lg-6">
<!-- top navigation bar -->

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li>
      <li><a href="#">Page 3</a></li>
    </ul>
  </div>
</nav>

<h1> <%= new java.util.Date() %></h1>
<button class="btn btn-success">Submit</button>
<%
Connection conn=null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Movies","root","123456");
	if(conn != null)
	{
		out.print("Connected");
	}	
}
catch (Exception e){
	out.print("Not Connected"+ e);
}
%>

</div>
</div>
</div>
<script type="text/javascript" src="bootstrap\js\bootstrap.min.js"/>
</body>
</html>