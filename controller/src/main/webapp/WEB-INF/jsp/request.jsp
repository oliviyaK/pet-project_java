<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title><fmt:message key="button.requests"/></title>
    <link href="../../resources/table.css" rel="stylesheet">
    <link href="../../resources/create.css" rel="stylesheet">
    <link href="../../resources/button.css" rel="stylesheet">
    <link href="../../resources/smallButton.css" rel="stylesheet">
    <link href="../../resources/menu.css" rel="stylesheet">
    <link href="../../resources/styleGeneral.css" rel="stylesheet">
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
    <div style="text-align: center;">
        <table>
            <div class="d13">
                <h1><fmt:message key="button.requests"/></h1></div>
            <tr>
                <th><fmt:message key="button.table.date"/></th>
                <th><fmt:message key="button.table.typeOfRequest"/></th>
                <th><fmt:message key="button.table.finalDate"/></th>
                <th><fmt:message key="button.table.finalComment"/></th>
                <th><fmt:message key="button.table.price"/></th>
                <th><fmt:message key="button.table.actions"/></th>
            </tr>
            <c:forEach var="request" items="${requests}">
                <tr>
                    <td>${request.date}</td>
                    <td>${request.requestType}</td>
                    <td>${request.finalDate}</td>
                    <td>${request.comment}</td>
                    <td>${request.price}</td>
                    <td>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/request/edit?id=${request.id}"><fmt:message
                                key="button.update"/></a>
                        <sec:authorize access="hasAuthority('ADMIN')">
                            <a class="smallButton"
                               href="${pageContext.request.contextPath}/request/delete?id=${request.id}"><fmt:message
                                    key="button.delete"/></a> </sec:authorize>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
