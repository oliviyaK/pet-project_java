<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/smallButton.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<link href="../../resources/styleOperatorPage.css" rel="stylesheet">
<html>
<head>
    <title><fmt:message key="button.main.operator"/></title>
</head>
<body>
<div style="text-align: center;">
    <nav class="one">
        <div style="text-align: right;">
            <a class="small_floating-button" href="${pageContext.request.contextPath}/operator?locale=en_US"><fmt:message key="lang.en"/></a>
            <a class="small_floating-button" href="${pageContext.request.contextPath}/operator?locale=ru_RU"><fmt:message key="lang.ru"/></a>
        </div>
        <ul class="topmenu">
            <li> <a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message key="button.main"/></a></li>
            <li><a class="floating-button" href="client"><fmt:message key="button.clients"/><i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/client/new"><fmt:message key="button.create.client"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="request"><fmt:message key="button.requests"/><i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/request/new"><fmt:message key="button.create.request"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="refrigerator"><fmt:message key="button.refrigerators"/><i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/refrigerator/new"><fmt:message key="button.create.refrigerator"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="detail"><fmt:message key="button.details"/><i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/detail/new"><fmt:message key="button.create.detail"/></a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>
</body>
</html>
