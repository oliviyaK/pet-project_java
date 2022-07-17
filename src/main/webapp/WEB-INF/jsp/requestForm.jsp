<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head><title><fmt:message key="button.create.request"/></title></head>
<body>
<c:choose>
<c:when test="${not empty param.idC}">
<div class="d13"><h1><fmt:message key="button.create.request"/> ${client.name} ${client.surname}</h1></div>
<form:form action="add" method="post" modelAttribute="request" autocomplete="off">
<form class="form-inner">
    <div class="stripes-block"></div>
    <div class="form-row">
        <fmt:message key="button.enter.date"/><label>
        <form:input type="date" path="date"/></label><br/></div>
    <div class="form-row"><fmt:message key="button.enter.typeOfRequest"/><label>
        <form:input path="requestType"/></label><br/></div>
    <div class="form-row">
        <fmt:message key="button.enter.finalDate"/><label>
        <form:input type="date" path="finalDate"/></label><br/></div>
    <div class="form-row">
        <fmt:message key="button.enter.finalComment"/><label>
        <form:input path="comment"/></label><br/></div>

    <div class="form-row"><label>
        <fmt:message key="button.add.refrigerator"/>
        <form:select multiple="ref" path="refrigerator">
            <option selected><fmt:message key="button.choose.refrigerator"/></option>
            <c:forEach var="ref" items="${refrigerator}">
                <form:option label="${ref.brand} + ${ref.model}" value="${ref.id}">
                </form:option>
            </c:forEach>
        </form:select>

    </label><br/></div>

    <div class="form-row">
        <fmt:message key="button.enter.price"/><label>
        <form:input path="price"/></label><br/>
        <form:input path="client" type="hidden" value="${client.id}"/>
        <button class="floating-button"><fmt:message key="button.create"/></button>
        <a class="floating-button" href="/client"><fmt:message key="button.back"/></a></div>
    </form:form>
    </c:when>
    <c:when test="${not empty param.id}">
    <div class="d13"><h1><fmt:message key="button.update.request"/></h1></div>
    <form:form action="add" method="post" modelAttribute="request" autocomplete="off">
        <form:hidden path="id"/>
    <form class="form-inner">
        <div class="stripes-block"></div>
        <div class="form-row">
            <fmt:message key="button.enter.date"/><label>
            <form:input type="date" path="date"/> </label><br/></div>
        <div class="form-row">
            <fmt:message key="button.enter.typeOfRequest"/><label>
            <form:input path="requestType"/> </label><br/></div>
        <div class="form-row">
            <fmt:message key="button.enter.finalDate"/><label>
            <form:input type="date" path="finalDate"/></label><br/></div>
        <div class="form-row">
            <fmt:message key="button.enter.finalComment"/><label><form:input path="comment"/></label><br/></div>
        <div class="form-row"><label>
            <fmt:message key="button.add.refrigerator"/>
            <form:select multiple="ref" path="refrigerator">
                <option selected><fmt:message key="button.choose.refrigerator"/></option>
                <c:forEach var="ref" items="${refrigerator}">
                    <form:option label="${ref.brand} + ${ref.model}" value="${ref.id}">
                    </form:option>
                </c:forEach>
            </form:select>

        </label><br/></div>
        <div class="form-row"><fmt:message key="button.enter.price"/><label><form:input path="price"/></label><br/>
            <button class="floating-button"><fmt:message key="button.update"/></button>
            <a class="floating-button" href="/request"><fmt:message key="button.back"/></a></div>
        </form:form>
        </c:when>
        <c:when test="${empty param.id}">
        <div class="d13"><h1><fmt:message key="button.create.request"/></h1></div>
        <form:form action="add" method="post" modelAttribute="request" autocomplete="off">
        <form class="form-inner">
            <div class="stripes-block"></div>
            <div class="form-row">
                <fmt:message key="button.enter.date"/><label><form:input type="date" path="date"/></label> <br/>
            </div>
            <div class="form-row">
                <fmt:message key="button.enter.typeOfRequest"/><label><form:input
                    path="requestType"/></label><br/></div>
            <div class="form-row">
                <fmt:message key="button.enter.finalDate"/><label><form:input type="date"
                                                                              path="finalDate"/></label><br/>
            </div>
            <div class="form-row"><fmt:message key="button.enter.finalComment"/><label><form:input
                    path="comment"/></label><br/></div>

            <div class="form-row"><label>
                <fmt:message key="button.add.refrigerator"/>
                <form:select multiple="ref" path="refrigerator">
                    <option selected><fmt:message key="button.choose.refrigerator"/></option>
                    <c:forEach var="ref" items="${refrigerator}">
                        <form:option label="${ref.brand} + ${ref.model}" value="${ref.id}">
                        </form:option>
                    </c:forEach>
                </form:select>

            </label><br/></div>

            <div class="form-row"><fmt:message key="button.enter.price"/><label><form:input
                    path="price"/></label><br/>
                <button class="floating-button"><fmt:message key="button.create"/></button>
                <a class="floating-button" href="/request"><fmt:message key="button.back"/></a></div>
            </form:form>
            </c:when>
            </c:choose>
</body>
</html>
