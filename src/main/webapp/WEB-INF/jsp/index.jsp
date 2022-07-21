<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<div style="text-align: center;" class="d13">
    <h1><fmt:message key="title.page.welcome"/></h1>
    <a class="floating-button" href="/admin"><fmt:message key="button.main.admin"/></a>
    <a class="floating-button" href="/operator"><fmt:message key="button.main.operator"/></a>
</div>
</body>
</html>
