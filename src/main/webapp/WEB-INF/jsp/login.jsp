<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>

	<!-- Access the bootstrap Css like this, 
		Spring boot will handle the resource mapping automcatically -->
	<link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />

	<c:url value="/css/main.css" var="jstlCss" />
	<link href="${jstlCss}" rel="stylesheet" />

</head>
<body>
	<h3>Login</h3>
	<br>

	<form action="/login" method="post">

<c:if test="${not empty error}">  <p style="color:darkred;">${error}</p></c:if>

    <label for="username">Username</label>
    <br>
    <input type="text" name="username">
    <br><br>
    <label for="password">Password</label>
    <br>
    <input type="password" name="password">
    <br><br>
    <input type="checkbox" name="rememberMe"> Remember Me
    <br><br>
    <input type="submit" value="Submit">
</form>
	
	<script type="text/javascript" src="webjars/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>