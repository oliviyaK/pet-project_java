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
    <title><fmt:message key="button.requests.info"/></title>
</head>
<body>
<div style="text-align: center;">
    <nav class="one">
        <ul class="topmenu">
            <li><a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message
                    key="button.main"/></a></li>
            <li><a class="floating-button" href="${pageContext.request.contextPath}/client"><fmt:message
                    key="button.clients"/><i
                    class="fa fa-angle-down"></i></a></li>
            <li><a class="floating-button" href="${pageContext.request.contextPath}/request"><fmt:message
                    key="button.requests"/><i
                    class="fa fa-angle-down"></i></a></li>
            <li><a class="floating-button" href="${pageContext.request.contextPath}/refrigerator"><fmt:message
                    key="button.refrigerators"/><i
                    class="fa fa-angle-down"></i></a></li>
            <li><a class="floating-button" href="${pageContext.request.contextPath}/detail"><fmt:message
                    key="button.details"/><i
                    class="fa fa-angle-down"></i></a></li>
        </ul>
    </nav>
</div>
<div style="text-align: center;">
    <table>
        <div class="d13"><h1><fmt:message key="button.table.requestInfo"/> ${client.name} ${client.surname}</h1></div>
        <tr>
            <th><fmt:message key="button.table.date"/></th>
            <th><fmt:message key="button.table.typeOfRequest"/></th>
            <th><fmt:message key="button.table.finalDate"/></th>
            <th><fmt:message key="button.table.finalComment"/></th>
            <th><fmt:message key="button.table.price"/></th>
            <th><fmt:message key="button.refrigerator.info"/></th>
        </tr>
        <c:forEach var="request" items="${requests}">
            <tr>
                <td>${request.date}</td>
                <td>${request.requestType}</td>
                <td>${request.finalDate}</td>
                <td>${request.comment}</td>
                <td>${request.price}</td>
                <td>${request.refrigerator}</td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
