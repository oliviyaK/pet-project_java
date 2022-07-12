<%@ page contentType="text/html;charset=UTF-8" %>
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
    <title><fmt:message key="button.requests"/></title>
</head>
<body>
<div style="text-align: center;">
    <nav class="one">
        <div style="text-align: right;">
            <a class="small_floating-button"
               href="${pageContext.request.contextPath}/request?locale=en_US"><fmt:message key="lang.en"/></a>
            <a class="small_floating-button"
               href="${pageContext.request.contextPath}/request?locale=ru_RU"><fmt:message key="lang.ru"/></a>
        </div>
        <ul class="topmenu">
            <li><a class="floating-button" href="${pageContext.request.contextPath}/index"><fmt:message
                    key="button.main"/></a></li>
            <li><a class="floating-button" href="client"><fmt:message key="button.clients"/><i
                    class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/client/new"><fmt:message key="button.create.client"/></a></li>
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
                    <li><a href="/refrigerator/new"><fmt:message key="button.create.refrigerator"/></a></li>
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
                <h1><fmt:message key="button.requests"/></h1></div>
            <tr>
                <th><fmt:message key="button.table.date"/></th>
                <th><fmt:message key="button.table.typeOfRequest"/></th>
                <th><fmt:message key="button.table.finalDate"/></th>
                <th><fmt:message key="button.table.finalComment"/></th>
                <th><fmt:message key="button.table.price"/></th>
                <th><fmt:message key="button.table.actions"/></th>
                <th><fmt:message key="button.table.requestInfo"/></th>
            </tr>
            <c:forEach var="request" items="${requests}">
                <tr>
                    <td>${request.date}</td>
                    <td>${request.requestType}</td>
                    <td>${request.finalDate}</td>
                    <td>${request.comment}</td>
                    <td>${request.price}</td>
                    <td>
                        <a class="smallButton" href="${pageContext.request.contextPath}/request/edit?id=${request.id}">Update</a>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/request/delete?id=${request.id}">Delete</a>
                    </td>
                </tr>
                <%--                    <form action="addRefrigerator.jsp">--%>
                <%--                        <input name="id" type="hidden" value="${request.id}">--%>
                <%--                        <button class="smallButton">Add refrigerator</button>--%>
                <%--                    </form>--%>
                <%--                </td>--%>
                <%--                    <form name="info" method="post" action="requestInfo.jsp">--%>
                <%--                        <input name="id" type="hidden" value="${request.id}">--%>
                <%--                        <input name="date" type="hidden" value="${request.date}">--%>
                <%--                        <input name="requestType" type="hidden" value="${request.requestType}">--%>
                <%--                        <input name="finalDate" type="hidden" value="${request.finalDate}">--%>
                <%--                        <input name="comment" type="hidden" value="${request.comment}">--%>
                <%--                        <input name="price" type="hidden" value="${request.price}">--%>
                <%--                        <input name="clientName" type="hidden" value="${request.client.name}">--%>
                <%--                        <input name="clientSurname" type="hidden" value="${request.client.surname}">--%>
                <%--                        <input name="clientAddress" type="hidden" value="${request.client.address}">--%>
                <%--                        <input name="clientPhone" type="hidden" value="${request.client.phone}">--%>
                <%--                        <input name="clientComment" type="hidden" value="${request.client.comment}">--%>
                <%--                        <button class="smallButton">Client details</button>--%>
                <%--                    </form>--%>
                <%--                    <form name="info" method="post" action="refrigeratorInfo.jsp">--%>
                <%--                        <input name="id" type="hidden" value="${request.id}">--%>
                <%--                        <input name="date" type="hidden" value="${request.date}">--%>
                <%--                        <input name="requestType" type="hidden" value="${request.requestType}">--%>
                <%--                        <input name="finalDate" type="hidden" value="${request.finalDate}">--%>
                <%--                        <input name="comment" type="hidden" value="${request.comment}">--%>
                <%--                        <input name="price" type="hidden" value="${request.price}">--%>
                <%--                        <input name="refrigeratorBrand" type="hidden" value="${request.refrigeratorBrand}">--%>
                <%--                        <input name="refrigeratorModel" type="hidden" value="${request.refrigeratorModel}">--%>
                <%--                        <button class="smallButton">Refrigerator details</button>--%>
                <%--                    </form>--%>
            </c:forEach>
        </table>
    </div>
</div>
</body>
</html>
