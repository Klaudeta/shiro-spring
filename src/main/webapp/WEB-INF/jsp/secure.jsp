<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Secure</title>
</head>
<body style="margin-left: 30px;">
<h1>Welcome ${username}!</h1>
<p><strong>Role</strong>: ${role}</p>
<p><strong>Permissions</strong></p>
<p>${permission}</p>
<br>
<a href="/anothersecured">Another Secured</a>
<form role="form" action="/logout" method="POST">
   <input type="Submit" value="Logout" />
</form>
</body>
</html>