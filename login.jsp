<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ page session="false" %> --%>
<%
String se;
se=(String)session.getAttribute("isUserLoggedIn");
String ab=(String)session.getAttribute("userLog");


/* if(se!=null){
	response.sendRedirect("login.jsp");

} else if(ab!=null){
	response.sendRedirect("login.jsp");
} */

 
%>
<!DOCTYPE html>
<html>
<head>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>
<style type="text/css">
.CommentBox>div {
	margin: 0 auto;
	width: 250px;
}

#maindiv {
	margin-top: 7%;
}

#emaildiv {
	width: 60%;
}

#passdiv {
	width: 60%;
}

#buttondiv {
	margin-left: 20%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <form action="http://192.168.50.94:8080/AgileSoftInventoryManagementSystem/agilelogin" method="post"> -->
	<form action="agilelogin" method="post">
		<jsp:include page="Topview.jsp" />
		<div class="col-lg-4 col-lg-offset-4" id="maindiv">
			<div class="form-group" id="emaildiv">
				<label for="email">Email address:</label> <input type="email"
					required="required" class="form-control" name="email">
			</div>
			<div class="form-group" id="passdiv">
				<label for="pwd">Password:</label> <input type="password"
					required="required" class="form-control" name="pwd">
			</div>
			<div class="checkbox">
				<label><input type="checkbox"> Remember me</label>
			</div>
			<div class="form-group" id="buttondiv">
				<button type="submit" class="btn btn-primary" class="form-control">Login</button>
			</div>
		</div>
	</form>
	<jsp:include page="footer.jsp" />

</body>
</html>