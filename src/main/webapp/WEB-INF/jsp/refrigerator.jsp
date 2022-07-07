<link href="../../resources/caption.css" rel="stylesheet">
<link href="../../resources/table.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Refrigerators</title>
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
        <caption>Refrigerator list</caption>
        <tr>
            <th>Brand</th>
            <th>Model</th>
            <th>Comment</th>
            <th>Actions</th>
            <th>Parts Info</th>
        </tr>
        <c:forEach var="refrigerator" items="${refrigerators}">
            <tr>
                <td>${refrigerator.brand}</td>
                <td>${refrigerator.model}</td>
                <td>${refrigerator.comment}</td>
                <td>
                    <a class="smallButton" href="/refrigerator/edit?id=${refrigerator.id}">Update</a>
                    <a class="smallButton" href="/refrigerator/delete?id=${refrigerator.id}">Delete</a>
                </td><td>
<%--                    <form action="addPart.jsp">--%>
<%--                        <input name="id" type="hidden" value="${refrigerator.id}">--%>
<%--                        <button class="smallButton">Add part</button>--%>
<%--                    </form>--%>
<%--                <form name="info" method="post" action="partInfo.jsp">--%>
<%--                    <input name="id" type="hidden" value="${refrigerator.id}">--%>
<%--                    <input name="brand" type="hidden" value="${refrigerator.brand}">--%>
<%--                    <input name="model" type="hidden" value="${refrigerator.model}">--%>
<%--                    <input name="detailName" type="hidden" value="${refrigerator.detailName}">--%>
<%--                    <button class="smallButton">Parts</button>--%>
<%--                </form>--%>

            </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div style="text-align: center;">
    <form name="test" action="/refrigerator/new">
        <button class="floating-button">New item</button>
    </form>
    <form name="home" action="index.jsp">
        <button class="floating-button">Main Page</button>
    </form>
</div>
</body>
</html>