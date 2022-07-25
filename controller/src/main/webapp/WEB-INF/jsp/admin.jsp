<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <link href="../../resources/table.css" rel="stylesheet">
    <link href="../../resources/create.css" rel="stylesheet">
    <link href="../../resources/button.css" rel="stylesheet">
    <link href="../../resources/smallButton.css" rel="stylesheet">
    <link href="../../resources/menu.css" rel="stylesheet">
    <link href="../../resources/styleGeneral.css" rel="stylesheet">
    <link href="../../resources/paginationStyle.css" rel="stylesheet">
    <link href="../../resources/searchStyle.css" rel="stylesheet">
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
        <ul class="topmenu">
            <li><a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message
                    key="button.main"/></a></li>
            <sec:authorize access="hasAuthority('ADMIN')">
                <li><a class="floating-button" href="/registration"><fmt:message key="button.main.signup"/></a></li>
            </sec:authorize>
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
    </nav>
</div>

<table>
    <div class="d13"><h1><fmt:message key="button.main.admin"/></h1></div>
    <tr>
        <th><fmt:message key="button.table.name"/></th>
        <th><fmt:message key="button.table.surname"/></th>
        <th><fmt:message key="button.main.username"/></th>
        <th><fmt:message key="button.table.actions"/></th>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name}</td>
            <td>${user.surname}</td>
            <td>${user.username}</td>
            <td>
                <a class="smallButton"
                   href="${pageContext.request.contextPath}/admin/edit?id=${user.id}"><fmt:message
                        key="button.update"/></a>
                <a class="smallButton"
                   href="${pageContext.request.contextPath}/admin/delete?id=${user.id}"><fmt:message
                        key="button.delete"/></a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
