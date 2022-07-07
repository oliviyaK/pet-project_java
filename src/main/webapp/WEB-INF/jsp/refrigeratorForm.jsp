<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head>
    <title>Create a refrigerator</title>
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
<div class="d11"><h2>Create a refrigerator</h2></div>
<form:form action="add" method="post" modelAttribute="refrigerator" autocomplete="off">
    <div class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row">
    Enter brand: <label>
    <form:input path="brand"/>
    </label> <br/></div>
    <div class="form-row">
    Enter model: <label>
    <form:input path="model"/>
    </label><br/></div>
    <div class="form-row">
    Enter comment: <label>
    <form:input path="comment"/>
    </label><br/>
        <button class="floating-button">Create</button>
        </form:form>

    <div style="text-align: center;">
        <% } else if (request.getParameter("id")!=null) {%>
        <form:form action="add" method="post" modelAttribute="refrigerator" autocomplete="off">
    <h2>Update a refrigerator: ${refrigerator.brand} ${refrigerator.model}</h2>
            <form:hidden path="id"/>
    <div class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row">
    Enter brand: <label>
            <form:input path="brand"/></label><br/>
    </div>
    <div class="form-row">
    Enter model: <label>
            <form:input path="model"/></label><br/>
    </div>
    <div class="form-row">
    Enter comment: <label>
            <form:input path="comment"/></label> <br/>
        <button class="floating-button">Update</button>
        </form:form>
        <% } %>
        <a class="floating-button" href="/refrigerator">Back</a></div>
    </div>
    </body>
    </html>
