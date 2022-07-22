<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><fmt:message key="button.update.operator"/></title>
</head>
<body>
<div class="d13"><h1><fmt:message key="button.update.operator"/> ${user.name} ${user.surname}</h1></div>
<form:form action="add" method="post" modelAttribute="user" autocomplete="off">
<form:hidden path="id"/>
<div class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row-refr"><fmt:message key="button.enter.name"/><label><form:input path="name"/> </label> <br/>
    </div>
    <div class="form-row-refr">
        <fmt:message key="button.enter.surname"/><label><form:input path="surname"/></label><br/></div>
        <button class="floating-button"><fmt:message key="button.update"/></button>
        <a class="floating-button" href="/admin"><fmt:message key="button.back"/></a></div>
    </form:form>
</body>
</html>
