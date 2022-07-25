<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8"%>
<html>
<head>
    <title><fmt:message key="button.update.operator"/></title>
</head>
<body>
<c:choose>
    <c:when test="${not empty param.id}">
        <div class="d13"><h1><fmt:message key="button.update.operator"/> ${operator.name} ${operator.surname}</h1></div>
        <form:form action="add" method="post" modelAttribute="operator" autocomplete="off">
            <form:hidden path="id"/>
            <form:hidden path="active"/>
            <form:hidden path="roles"/>
            <form:hidden path="password"/>
            <div class="form-inner">
                <div class="stripes-block"></div>
                <div class="form-row-refr"><fmt:message key="button.main.username"/><label><form:input
                        path="username"/> </label><br/>
                </div>
                <div class="form-row-refr"><fmt:message key="button.enter.name"/><label><form:input
                        path="name"/> </label><br/>
                </div>
                <div class="form-row-refr">
                    <fmt:message key="button.enter.surname"/><label><form:input path="surname"/></label><br/></div>
                <button class="floating-button"><fmt:message key="button.update"/></button>
                <a class="floating-button" href="/admin"><fmt:message key="button.back"/></a></div>
        </form:form>
    </c:when>
</c:choose>
</body>
</html>
