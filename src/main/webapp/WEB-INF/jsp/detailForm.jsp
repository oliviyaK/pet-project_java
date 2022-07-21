<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page isELIgnored="false" %>
<link href="../../resources/button.css" rel="stylesheet">
<link href="../../resources/clientCard.css" rel="stylesheet">
<link href="../../resources/create.css" rel="stylesheet">
<html>
<head><title><fmt:message key="button.create.detail"/></title></head>
<body>
<div id="left">
    <c:choose>
    <c:when test="${not empty param.id}">
    <div class="d13"><h1><fmt:message key="button.update.detail"/> ${detail.name}</h1>
        <form:form action="add" method="post" modelAttribute="detail" autocomplete="off">
            <form:hidden path="id"/>
        <div class="form-inner">
            <div class="stripes-block"></div>
            <div class="form-row-refr"><fmt:message key="button.enter.itemName"/> <label><form:input
                    path="name"/></label><br/></div>
            <div class="form-row-refr">
                    <fmt:message key="button.enter.price"/> <label><form:input path="price"/></label><br/>
                <div class="form-row-refr"><input name="action" type="hidden" value="update">
                    <button class="floating-button"><fmt:message key="button.update"/></button>
                    <a class="floating-button" href="/detail"><fmt:message key="button.back"/></a></div>
                </form:form>
                </c:when>
                <c:when test="${empty param.id}">
                <div class="d13"><h1><fmt:message key="button.create.detail"/></h1></div>
                <form:form action="add" method="post" modelAttribute="detail" autocomplete="off">
                <div class="form-inner">
                    <div class="stripes-block"></div>
                    <div class="form-row-refr"><fmt:message key="button.enter.itemName"/><label><form:input
                            path="name"/></label><br/></div>
                    <div class="form-row-refr"><fmt:message key="button.enter.price"/><label><form:input
                            path="price"/></label><br/>
                        <button class="floating-button"><fmt:message key="button.create"/></button>
                        <a class="floating-button" href="/detail"><fmt:message key="button.back"/></a></div>
                    </form:form>
                    </c:when>
                    </c:choose>
</body>
</html>
