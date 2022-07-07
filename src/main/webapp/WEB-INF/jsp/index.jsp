<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Main Page</title>
</head>
<link href="../../resources/button.css" rel="stylesheet">
<style>
    title {
        font-style: normal;
    }

    body {
        background-image: url("<%=request.getContextPath()%>/resources/images/OTU5ODQzMTM7.jpg");
        color: black;
        background-size: cover;
    }
</style>
<body>
<div style="text-align: center;">
    <a class="floating-button" href="admin">Admin Page</a>
    <a class="floating-button" href="operator">Operator Page</a>
</div>
</body>
</html>
