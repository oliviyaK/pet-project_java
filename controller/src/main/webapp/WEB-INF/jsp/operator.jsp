<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="../../resources/button.css" rel="stylesheet">
    <link href="../../resources/smallButton.css" rel="stylesheet">
    <link href="../../resources/menu.css" rel="stylesheet">
    <link href="../../resources/styleOperatorPage.css" rel="stylesheet">
    <title><fmt:message key="button.main.operator"/></title>
</head>
<body>
<div style="text-align: right;">
    <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=en_US"><fmt:message
            key="lang.en"/></a>
    <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=ru_RU"><fmt:message
            key="lang.ru"/></a>
</div>
<div style="text-align: center;">
    <nav class="one">
        <div style="text-align: center;">
            <ul class="topmenu">
                <li><a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message
                        key="button.main"/></a></li>
                <li><a class="floating-button" href="/client"><fmt:message key="button.clients"/></a>
                    <ul class="submenu">
                        <li><a href="${pageContext.request.contextPath}/client/new"><fmt:message
                                key="button.create.client"/></a></li>
                    </ul>
                </li>
                <li><a class="floating-button" href="/request"><fmt:message key="button.requests"/></a>
                    <ul class="submenu">
                        <li><a href="${pageContext.request.contextPath}/request/new"><fmt:message
                                key="button.create.request"/></a></li>
                    </ul>
                </li>
                <li><a class="floating-button" href="/refrigerator"><fmt:message key="button.refrigerators"/></a>
                    <ul class="submenu">
                        <li><a href="${pageContext.request.contextPath}/refrigerator/new"><fmt:message
                                key="button.create.refrigerator"/></a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>
</body>
</html>
