<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/create.css" rel="stylesheet">
<link href="../../resources/styleMainPage.css" rel="stylesheet">
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/smallButton.css" rel="stylesheet">
<html>
<div style="text-align: right;">
    <a class="small_floating-button" href="${pageContext.request.contextPath}/index?locale=en_US"><fmt:message
            key="lang.en"/></a>
    <a class="small_floating-button" href="${pageContext.request.contextPath}/index?locale=ru_RU"><fmt:message
            key="lang.ru"/></a>
</div>
<head>
    <title><fmt:message key="button.main.page"/></title>
</head>
<body>
<div class="d13">
    <h1><fmt:message key="title.page.welcome"/></h1>
    <a class="floating-button" href="/admin"><fmt:message key="button.main.admin"/></a><br/>
    <a class="floating-button" href="/operator"><fmt:message key="button.main.operator"/></a><br/>
</div>
<div style="text-align: right;" class="d13">
<form:form action="logout" method="post">
    <button class="floating-button"><fmt:message key="button.logout"/></button>
</form:form>
</div>
</body>
</html>
