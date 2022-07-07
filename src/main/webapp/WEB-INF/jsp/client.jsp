<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/caption.css" rel="stylesheet">
<link href="../../resources/table.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<html>
<head>
    <title>Clients</title>
</head>
<style>
    body {
        margin: 0;
        height: 100vh;
        background: radial-gradient(#FAECD5 15%, transparent 15%), radial-gradient(#ABB93F 15%, transparent 15%);
        background-color: #CAE4D8;
        background-size: 30px 30px;
        background-position: 0 0, 20px 20px;
    }

    p {
        color: #FFF;
        font: 15px Lobster;
    }
</style>
<body>
<div style="text-align: center;">
    <nav class="one">
        <ul class="topmenu">
            <li><a class="floating-button" href="client">Clients<i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="/client/new">Create a client</a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="request">Requests<i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="requestForm.jsp">Create a request</a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="refrigerator">Refrigerators<i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="refrigeratorForm.jsp">Create refrigerator</a></li>
                </ul>
            </li>
            <li><a class="floating-button" href="part">Parts<i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="partForm.jsp">Create a part</a></li>
                </ul>
            </li>
        </ul>
    </nav>
    <div style="text-align: center;">
        <table>
            <caption>Your clients</caption>
            <tr>
                <th>Name</th>
                <th>Surname</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Comment</th>
                <th>Action</th>
                <th>Request info</th>
            </tr>
            <c:forEach var="client" items="${clients}">
                <tr>
                    <td>${client.name}</td>
                    <td>${client.surname}</td>
                    <td>${client.address}</td>
                    <td>${client.phone}</td>
                    <td>${client.comment}</td>
                    <td>
                        <a class="smallButton" href="/client/edit?id=${client.id}">Update</a>
                        <a class="smallButton" href="/client/delete?id=${client.id}">Delete</a>
<%--                        <a class="smallButton" href="/client/placeRequest?id=${client.id}">Add request</a>--%>
                                                </td><td>
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
    <div style="text-align: center;">
        <form name="test" action="/client/new">
            <button class="floating-button">New Client</button>
        </form>
        <form name="home" action="index">
            <button class="floating-button">Main Page</button>
        </form>
    </div>
</body>
</html>