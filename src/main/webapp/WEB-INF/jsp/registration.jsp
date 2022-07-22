<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8"%>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title><fmt:message key="button.main.signup"/></title>
</head>
<body>
<section class="text-center text-lg-start">
    <style>
        .cascading-right {
            margin-right: -50px;
        }

        @media (max-width: 991.98px) {
            .cascading-right {
                margin-right: 0;
            }
        }
    </style>
    <div class="container py-4">
        <div class="row g-0 align-items-center">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <div class="card cascading-right" style="
background: hsla(0, 0%, 100%, 0.55);
backdrop-filter: blur(30px);
">
                    <div class="card-body p-5 shadow-5 text-center">
                        <h2 class="fw-bold mb-5"><fmt:message key="button.main.signup"/></h2>
<div>
    <c:if test="${error}">
        Oshibka </c:if>
</div>
<div> <c:if test="${param.error}">
        Oshibka login</c:if>
</div>
<div> <c:if test="${param.logout}">
     vishli</c:if>
</div>
<form:form  action="registration" method="post" modelAttribute="user">
    <div><label> <fmt:message key="button.main.username"/> : <form:input path="username"/></label></div>
    <div><label> <fmt:message key="button.password"/>  : <form:input path="password"/></label></div>
    <div><input type="submit" value="<fmt:message key="button.login"/>"/></div>
</form:form>

</body>
</html>
