<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Another Secured</title>
</head>
<body style="margin-left: 30px;">
<h1>Welcome super secured ${username}!</h1>
<h2>Message: ${message}</h2>
<br>
<form role="form" action="/logout" method="POST">
   <input type="Submit" value="Logout" />
</form>
</body>
</html>