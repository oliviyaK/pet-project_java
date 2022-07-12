<%@ page import="java.util.Objects" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head>
    <title>Create a part</title>
    <style>
        body {
            background: papayawhip;
            color: slategrey;
            background-size: cover;
        }
    </style>
</head>
<body>
<div id="left">
        <% if (request.getParameter("id") == null) { %>
    <div class="d11"><h2>Create a part</h2></div>
    <form:form action="add" method="post" modelAttribute="detail" autocomplete="off">
    <div class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row">
            Enter name: <label>
            <form:input path="name"/>
        </label> <br/></div>
        <div class="form-row">
            Enter price: <label>
            <form:input path="price"/>
        </label><br/>
            <button class="floating-button">Create</button>
            </form:form>

            <div style="text-align: center;">
                    <% } else if (request.getParameter("id")!=null) {%>
                <form:form action="add" method="post" modelAttribute="detail" autocomplete="off">
                <h2>Update a detail: ${detail.name}</h2>
                    <form:hidden path="id"/>
                <div class="form-inner">
                    <div class="stripes-block"></div>
                    <div class="form-row">
                        Enter name: <label>
                        <form:input path="name"/></label><br/></div>
                    <div class="form-row">
                        Enter price: <label>
                        <form:input path="price"/></label><br/>
                        <div class="form-row">
                            <input name="action" type="hidden" value="update">
                            <button class="floating-button">Update</button>
                            </form:form>
                            <% } %>
                            <div style="text-align: center;">
                            </div>
                            <div style="text-align: center;">
                            <a class="floating-button" href="/detail">Back</a></div>
</body>
</html>
