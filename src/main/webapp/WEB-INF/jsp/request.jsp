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
    <title>Requests</title>
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
                    <li><a href="clientForm.jsp">Create a client</a></li>
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
        <caption>Your requests</caption>
        <tr>
            <th>Date</th>
            <th>Type of request</th>
            <th>Final date</th>
            <th>Final comment</th>
            <th>Price (BYN)</th>
            <th>Action</th>
            <th>Request info</th>
        </tr>
        <c:forEach var="request" items="${requests}">
            <tr>
                <td>${request.date}</td>
                <td>${request.requestType}</td>
                <td>${request.finalDate}</td>
                <td>${request.comment}</td>
                <td>${request.price}</td>
                <td>
                    <a class="smallButton" href="/request/edit?id=${request.id}">Update</a>
                    <a class="smallButton" href="/request/delete?id=${request.id}">Delete</a>

                        <%--                    <form action="addRefrigerator.jsp">--%>
                        <%--                        <input name="id" type="hidden" value="${request.id}">--%>
                        <%--                        <button class="smallButton">Add refrigerator</button>--%>
                        <%--                    </form>--%>
                        <%--                </td>--%>
 <td>
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
           </td>
            </tr>
        </c:forEach>
    </table>
</div>
<div style="text-align: center;">
    <form name="test" action="/request/new">
        <button class="floating-button">New Request</button>
    </form>
    <form name="home" action="index.jsp">
        <button class="floating-button">Main Page</button>
    </form>
</div>
</body>
</html>
