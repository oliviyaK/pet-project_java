<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head>
    <title>Create a client</title>
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
    <div class="d11"><h2>Create a client</h2></div>
    <form:form action="add" method="post" modelAttribute="client" autocomplete="off">
    <div class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row">
            Enter name: <label>
            <form:input path="name"/>
        </label> <br/></div>
        <div class="form-row">
            Enter surname: <label>
            <form:input path="surname"/>
        </label><br/></div>
        <div class="form-row">
            Enter address: <label>
            <form:input path="address"/>
        </label><br/></div>
        <div class="form-row">
            Enter phone: <label>
            <form:input path="phone"/>
        </label><br/></div>
        <div class="form-row">
            Enter comment: <label>
            <form:input path="comment"/>
        </label><br/>
            <button class="floating-button">Create</button>
            </form:form>

            <div style="text-align: center;">
                    <% } else if (request.getParameter("id")!=null) {%>
                <form:form action="add" method="post" modelAttribute="client" autocomplete="off">
                <h2>Update Client:${client.name} ${client.surname}</h2>
                    <form:hidden path="id"/>
                <div class="form-inner">
                    <div class="stripes-block"></div>
                    <div class="form-row">
                        Enter name: <label>
                        <form:input path="name"/> </label> <br/></div>
                    <div class="form-row">
                        Enter surname: <label>
                        <form:input path="surname"/>
                    </label> <br/></div>
                    <div class="form-row">
                        Enter address: <label>
                        <form:input path="address"/>
                    </label> <br/></div>
                    <div class="form-row">
                        Enter phone: <label>
                        <form:input path="phone"/>
                    </label> <br/></div>
                    <div class="form-row">
                        Enter comment: <label>
                        <form:input path="comment"/>
                    </label> <br/>
                        <button class="floating-button">Update</button>
                        </form:form>
                        <% } %>
                        <a class="floating-button" href="/">Back</a></div>
                </div>
</body>
</html>
