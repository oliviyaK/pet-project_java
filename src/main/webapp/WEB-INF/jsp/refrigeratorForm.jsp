<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head><title><fmt:message key="button.create.refrigerator"/></title></head>
<body>
<c:choose>
<c:when test="${empty param.id}">
<div class="d13"><h1><fmt:message key="button.create.refrigerator"/></h1></div>
<form:form action="add" method="post" modelAttribute="refrigerator" autocomplete="off">
<div class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row">
        <fmt:message key="button.enter.brand"/><label><form:input path="brand"/></label><br/></div>
    <div class="form-row"><fmt:message key="button.enter.model"/><label><form:input path="model"/></label><br/></div>
    <div class="form-row"><fmt:message key="button.enter.comment"/><label><form:input path="comment"/></label><br/>
        <button class="floating-button"><fmt:message key="button.create"/></button>
        <a class="floating-button" href="/refrigerator"><fmt:message key="button.back"/></a></div>
    </form:form>
    </c:when>
    <c:when test="${not empty param.id}">
    <div class="d13"><h1><fmt:message
            key="button.update.refrigerator"/> ${refrigerator.brand} ${refrigerator.model}</h1></div>
    <form:form action="add" method="post" modelAttribute="refrigerator" autocomplete="off">
        <form:hidden path="id"/>
    <div class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row"><fmt:message key="button.enter.brand"/><label><form:input
                path="brand"/></label><br/></div>
        <div class="form-row"><fmt:message key="button.enter.model"/><label><form:input
                path="model"/></label><br/></div>
        <div class="form-row"><fmt:message key="button.enter.comment"/><label><form:input
                path="comment"/></label> <br/>
            <button class="floating-button"><fmt:message key="button.update"/></button>
            <a class="floating-button" href="/refrigerator"><fmt:message key="button.back"/></a></div>
        </form:form>
        </c:when>
        </c:choose>
</body>
</html>
