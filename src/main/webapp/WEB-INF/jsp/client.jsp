<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/table.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/smallButton.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<link href="../../resources/styleGeneral.css" rel="stylesheet">
<link href="../../resources/paginationStyle.css" rel="stylesheet">
<link href="../../resources/searchStyle.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<html>
<head>
    <title><fmt:message key="button.clients"/></title>
</head>
<body>
        <div style="text-align: right;">
            <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=en_US"><fmt:message
                    key="lang.en"/></a>
            <a class="small_floating-button" href="${pageContext.request.contextPath}/client?locale=ru_RU"><fmt:message
                    key="lang.ru"/></a>
        </div>
            <nav class="one">
            <div style="text-align: center;">
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
            </div>
    </nav>
    <div style="text-align: center;">

        <table>
            <div class="d13"><h1><fmt:message key="button.clients"/></h1></div>
            <form action="${pageContext.request.contextPath}/client" method="get">
                <label>
                    <input type="text" name="clientName"/>
                </label>
                <button type="submit"></button>
            </form>
            <tr>
                <th>
                    <a href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${currentPage}&sortField=name&sortDir=${reverseSortDir}"
                    ><fmt:message key="button.table.name"/></a></th>
                <th>
                    <a href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${currentPage}&sortField=surname&sortDir=${reverseSortDir}"
                    ><fmt:message key="button.table.surname"/></a></th>
                <th><fmt:message key="button.table.address"/></th>
                <th><fmt:message key="button.table.phone"/></th>
                <th><fmt:message key="button.table.comment"/></th>
                <th><fmt:message key="button.table.actions"/></th>
                <th></th>
            </tr>
            <c:forEach var="client" items="${clients}">
                <tr>
                    <td>${client.name}</td>
                    <td>${client.surname}</td>
                    <td>${client.address}</td>
                    <td>${client.phone}</td>
                    <td>${client.comment}</td>
                    <td>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/client/edit?id=${client.id}"><fmt:message
                                key="button.update"/></a>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/client/delete?id=${client.id}"><fmt:message
                                key="button.delete"/></a>
                        <a class="smallButton"
                           href="${pageContext.request.contextPath}/request/add?idC=${client.id}"><fmt:message
                                key="button.create.request"/></a>
                    </td>
                    <td><a class="smallButton"
                           href="${pageContext.request.contextPath}/client/requestInfo?id=${client.id}"><fmt:message
                            key="button.table.requestInfo"/></a></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <footer>
        <div style="text-align: center;" class="pagination p1">
            Total pages ${totalElement}: Page ${currentPage} of ${totalPage}
            <ul><c:choose>
                <c:when test="${currentPage > 1}">
                    <a class="is-active"
                       href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=1
                                    &sortField=${sortField}&sortDir=${sortDir}">
                        <li>1</li>
                    </a>

                </c:when>
                <c:when test="${currentPage==1}">
                    <a class="is-active" disabled>
                        <li>1</li>
                    </a>
                </c:when>
            </c:choose>

                <c:choose><c:when test="${currentPage>1}">
                    <a class="is-active"
                       href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${currentPage - 1}
                &sortField=${sortField}&sortDir=${sortDir}">
                        <li><</li>
                    </a></c:when>

                    <c:when test="${currentPage==1}">
                        <a class="is-active" disabled>
                            <li>1</li>
                        </a></c:when>
                </c:choose>

                <c:forEach begin="2" end="${totalPage}" var="i">
                    <c:choose><c:when test="${currentPage eq i}">
                        <a class="is-active" disabled>
                            <li>${i}</li>
                        </a></c:when>
                        <c:otherwise><a class="is-active"
                                        href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${i}
                   &sortField=${sortField}&sortDir=${sortDir}">
                            <li>${i}</li>
                        </a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <c:choose>
                    <c:when test="${currentPage < totalPage}">
                        <a class="is-active"
                           href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${currentPage + 1}
                                    &sortField=${sortField}&sortDir=${sortDir}">
                            <li>></li>
                        </a>
                    </c:when>
                    <c:when test="${currentPage==totalPage}">
                        <a class="is-active" disabled>
                            <li>></li>
                        </a>
                    </c:when>
                </c:choose>
                <c:choose>
                    <c:when test="${currentPage < totalPage}">
                        <a class="is-active"
                           href="${pageContext.request.contextPath}/client?clientName=${clientName}&page=${totalPage}
                                    &sortField=${sortField}&sortDir=${sortDir}">
                            <li>Last</li>
                        </a>

                    </c:when>
                    <c:when test="${currentPage==totalPage}">
                        <a class="is-active" disabled>
                            <li>Last</li>
                        </a>
                    </c:when>
                </c:choose>
            </ul>
        </div>
    </footer>
</body>
</html>