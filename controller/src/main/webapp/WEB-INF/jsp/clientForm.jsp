<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <link href="../../resources/button.css" rel="stylesheet">
    <link href="../../resources/clientCard.css" rel="stylesheet">
    <link href="../../resources/create.css" rel="stylesheet">
    <title><fmt:message key="button.create.client"/></title></head>
<body>
<c:choose>
<c:when test="${not empty param.id}">
<div class="d13"><h1><fmt:message key="button.update.client"/> ${client.name} ${client.surname}</h1></div>
<form:form action="add" method="post" modelAttribute="client" autocomplete="off">
<form:hidden path="id"/>
<div class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row-refr"><fmt:message key="button.enter.name"/><label><form:input path="name"/> </label> <br/>
    </div>
    <div class="form-row-refr">
        <fmt:message key="button.enter.surname"/><label><form:input path="surname"/></label><br/></div>
    <div class="form-row-refr">
        <fmt:message key="button.enter.address"/><label><form:input path="address"/></label> <br/></div>
    <div class="form-row-refr"><fmt:message key="button.enter.phone"/><label><form:input path="phone"/>
    </label> <br/></div>
    <div class="form-row-refr"><fmt:message key="button.enter.comment"/><label><form:input path="comment"/></label><br/>
        <button class="floating-button"><fmt:message key="button.update"/></button>
        <a class="floating-button" href="/client"><fmt:message key="button.back"/></a></div>
    </form:form>
    </c:when>
    <c:when test="${empty param.id}">
    <div class="d13"><h1><fmt:message key="button.create.client"/></h1></div>
    <form:form action="add" method="post" modelAttribute="client" autocomplete="off">
    <div class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row-refr">
            <fmt:message key="button.enter.name"/><label><form:input path="name"/></label><br/></div>
        <div class="form-row-refr"><fmt:message key="button.enter.surname"/><label><form:input
                path="surname"/></label><br/></div>
        <div class="form-row-refr"><fmt:message key="button.enter.address"/><label><form:input
                path="address"/></label><br/></div>
        <div class="form-row-refr">
            <fmt:message key="button.enter.phone"/><label>
            <form:input path="phone"/>
        </label><br/></div>
        <div class="form-row-refr"><fmt:message key="button.enter.comment"/><label><form:input
                path="comment"/></label><br/>
            <button class="floating-button"><fmt:message key="button.create"/></button>
            <a class="floating-button" href="/client"><fmt:message key="button.back"/></a></div>
        </form:form>
        </c:when>
        </c:choose>
</body>
</html>
