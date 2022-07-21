<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/table.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/smallButton.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<link href="../../resources/styleGeneral.css" rel="stylesheet">
<html>
<head>
    <title><fmt:message key="button.details"/></title>
</head>
<body>
<div style="text-align: center;">
    <nav class="one">
        <div style="text-align: right;">
            <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=en_US"><fmt:message
                    key="lang.en"/></a>
            <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=ru_RU"><fmt:message
                    key="lang.ru"/></a>
        </div>
        <ul class="topmenu">
            <li><a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message
                    key="button.main"/></a></li>
            <li><a class="floating-button" href="client"><fmt:message key="button.clients"/></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/client/new"><fmt:message
                            key="button.create.client"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="request"><fmt:message key="button.requests"/></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/request/new"><fmt:message
                            key="button.create.request"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="refrigerator"><fmt:message key="button.refrigerators"/></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/refrigerator/new"><fmt:message
                            key="button.create.refrigerator"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="detail"><fmt:message key="button.details"/></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/detail/new"><fmt:message
                            key="button.create.detail"/></a></li>
                </ul>
            </li>
        </ul>
    </nav>
<div style="text-align: center;">
    <table>
        <div class="d13">
            <h1><fmt:message key="button.details.table"/></h1></div>
        <tr>
            <th><fmt:message key="button.table.name.item"/></th>
            <th><fmt:message key="button.table.price"/></th>
            <th><fmt:message key="button.table.actions"/></th>
        </tr>
<c:forEach var="detail" items="${details}">
    <tr>
    <td>${detail.name}</td>
    <td>${detail.price}</td>
    <td>
        <a class="smallButton" href="${pageContext.request.contextPath}/detail/edit?id=${detail.id}"><fmt:message key="button.update"/></a>
        <a class="smallButton" href="${pageContext.request.contextPath}/detail/delete?id=${detail.id}"><fmt:message key="button.delete"/></a>
    </td>
    </tr>
</c:forEach>
    </table>
</div>
</div>
</body>
</html>
