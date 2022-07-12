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
    <title><fmt:message key="button.clients"/></title>
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
            <li><a class="floating-button" href="client"><fmt:message key="button.clients"/><i
                    class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/client/new"><fmt:message
                            key="button.create.client"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="request"><fmt:message key="button.requests"/><i
                    class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/request/new"><fmt:message
                            key="button.create.request"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="refrigerator"><fmt:message key="button.refrigerators"/><i
                    class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="${pageContext.request.contextPath}/refrigerator/new"><fmt:message
                            key="button.create.refrigerator"/></a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="detail"><fmt:message key="button.details"/><i
                    class="fa fa-angle-down"></i></a>
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
                <h1><fmt:message key="button.clients"/></h1></div>
            <tr>
                <th><fmt:message key="button.table.name"/></th>
                <th><fmt:message key="button.table.surname"/></th>
                <th><fmt:message key="button.table.address"/></th>
                <th><fmt:message key="button.table.phone"/></th>
                <th><fmt:message key="button.table.comment"/></th>
                <th><fmt:message key="button.table.actions"/></th>
                <th><fmt:message key="button.table.requestInfo"/></th>
            </tr>
            <c:forEach var="client" items="${clients}">
                <tr>
                    <td>${client.name}</td>
                    <td>${client.surname}</td>
                    <td>${client.address}</td>
                    <td>${client.phone}</td>
                    <td>${client.comment}</td>
                    <td>
                        <a class="smallButton" href="${pageContext.request.contextPath}/client/edit?id=${client.id}">Update</a>
                        <a class="smallButton" href="${pageContext.request.contextPath}/client/delete?id=${client.id}">Delete</a>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/client/addRequest?id=${client.id}">Add request</a>
                            <%--                        <a class="smallButton" href="/client/placeRequest?id=${client.id}">Add request</a>--%>
                    </td>
                    <td>
                            <%--                        <form name="info" method="post" action="clientInfo.jsp">--%>
                            <%--                            <input name="id" type="hidden" value="${client.id}">--%>
                            <%--                            <input name="name" type="hidden" value="${client.name}">--%>
                            <%--                            <input name="surname" type="hidden" value="${client.surname}">--%>
                            <%--                            <input name="address" type="hidden" value="${client.address}">--%>
                            <%--                            <input name="phone" type="hidden" value="${client.phone}">--%>
                            <%--                            <input name="comment" type="hidden" value="${client.comment}">--%>
                            <%--                            <input name="requestOfClientDate" type="hidden" value="${client.requestOfClientDate}">--%>
                            <%--                            <input name="requestOfClientType" type="hidden" value="${client.requestOfClientType}">--%>
                            <%--                            <button class="smallButton">Request details</button>--%>
                            <%--                        </form>--%>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>