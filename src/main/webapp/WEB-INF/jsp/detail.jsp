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
    <title>Parts</title>
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
            <li><a class="floating-button" href="detail">Parts<i class="fa fa-angle-down"></i></a>
                <ul class="submenu">
                    <li><a href="detailForm.jsp">Create a part</a></li>
                </ul>
            </li>
        </ul>
    </nav>
<div style="text-align: center;">
    <table>
        <caption>Repair parts</caption>
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Refrigerators</th>
        </tr>
<c:forEach var="part" items="${details}">
    <tr>
    <td>${detail.name}</td>
    <td>${detail.price}</td>
    <td>
        <a class="smallButton" href="/detail/edit?id=${detail.id}">Update</a>
        <a class="smallButton" href="/detail/delete?id=${detail.id}">Delete</a>
    </td>
    </tr>
</c:forEach>
    </table>
</div>
<div style="text-align: center;">
    <form name="test" action="/detail/new">
        <button class="floating-button">New Detail</button>
    </form>
    <form name="home" action="index">
        <button class="floating-button">Main Page</button>
    </form>
</div>
</div>
</body>
</html>
