<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="java.util.Objects" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head>
    <title>Create a request</title>
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
    <div class="d11"><h2>Create a request</h2></div>
    <form:form action="add" method="post" modelAttribute="request" autocomplete="off">
    <form class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row">
            Enter date: <label>
            <form:input path="date"/>
        </label> <br/></div>
        <div class="form-row">
            Enter type of request: <label>
            <form:input path="requestType"/>
        </label><br/></div>
        <div class="form-row">
            Enter final date: <label>
            <form:input path="finalDate"/>
        </label><br/></div>
        <div class="form-row">
            Enter comment: <label>
            <form:input path="comment"/>
        </label><br/></div>
        <div class="form-row">
            Enter price: <label>
            <form:input path="price"/>
        </label><br/>
            <button class="floating-button">Create</button>
            </form:form>
            <div style="text-align: center;">
                    <% } else if (request.getParameter("id")!=null) {%>
                        <form:form action="add" method="post" modelAttribute="request" autocomplete="off">
                <h2>Update a request: ${request.id}</h2>
                        <form:hidden path="id"/>
                                    <form class="form-inner">
                                        <div class="stripes-block"></div>
                                        <div class="form-row">
                                            Enter date: <label>
                                            <form:input path="date"/> </label><br/></div>
                                        <div class="form-row">
                                            Enter type of request: <label>
                                            <input name="requestType" type="text" value="<%=request.getParameter("requestType")%>">
                                        </label><br/></div>
                                            <div class="form-row">
                                                Enter final date: <label>
                                                <form:input path="finalDate"/>
                                            </label><br/></div>
                                            <div class="form-row">
                                                Enter comment: <label>
                                                <form:input path="comment"/>
                                            </label><br/></div>
                                            <div class="form-row">
                                                Enter price: <label>
                                                <form:input path="price"/>
                                            </label><br/>
                                    <button class="floating-button">Update</button>
                                                </form:form>

                <%--                            <% } else if (request.getParameter("id") != null) { %>--%>
                <%--                        <div class="d11"><h2>Create a client's request</h2></div>--%>
                <%--                        <form name="addRequestToClient" method="post" action="request" autocomplete="off">--%>
                <%--                            <input name="id" type="hidden" value="<%=request.getParameter("id")%>">--%>
                <%--                            <div class="form-inner">--%>
                <%--                                <div class="stripes-block"></div>--%>
                <%--                                <div class="form-row">--%>
                <%--                                    Enter date: <label>--%>
                <%--                                    <input name="date" type="date" required placeholder="Дата">--%>
                <%--                                </label> <br/></div>--%>
                <%--                                <div class="form-row">--%>
                <%--                                    Enter type of request: <label>--%>
                <%--                                    <input name="requestType" type="text" required placeholder="Заявка">--%>
                <%--                                </label><br/></div>--%>
                <%--                            </div>--%>
                <%--                            <input name="action" type="hidden" value="addRequestToClient">--%>
                <%--                            <button class="floating-button">Create</button>--%>
                    <%}%>
                <div style="text-align: center;">
                </div>
                <div style="text-align: center;">
                    <a class="floating-button" href="/request">Back</a></div>
</body>
</html>
