<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/menu.css" rel="stylesheet">
<html>
<head>
    <title>Operator's page</title>
</head>
<style>
    title {
        font-style: normal;
    }
    body {
        background: url("<%=request.getContextPath()%>/resources/images/operator.jpg");
        color: black;
        background-size: cover;
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
                <li><a href="/request/new">Create a request</a></li>
            </ul>
        </li>
        <li><a class="floating-button" href="refrigerator">Refrigerators<i class="fa fa-angle-down"></i></a>
            <ul class="submenu">
                <li><a href="/refrigerator/new">Create refrigerator</a></li>
            </ul>
        </li>
        <li><a class="floating-button" href="part">Parts<i class="fa fa-angle-down"></i></a>
            <ul class="submenu">
                <li><a href="/part/new">Create a part</a></li>
            </ul>
        </li>
    </ul>
</nav>
</div>
</body>
</html>
