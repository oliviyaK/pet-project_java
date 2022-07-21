<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<link href="../../resources/loginStyle.css" rel="stylesheet">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<div>
    <c:if test="${error}">
        Oshibka </c:if>
</div>
<div> <c:if test="${param.error}">
        Oshibka login</c:if>
</div>
<div> <c:if test="${param.logout}">
     vishli</c:if>
</div>
<form:form  action="registration" method="post" modelAttribute="user">
    <div><label> User Name : <form:input path="username"/></label></div>
    <div><label> Password : <form:input path="password"/></label></div>
    <div><input type="submit" value="Sign In"/></div>
</form:form>

</body>
</html>
