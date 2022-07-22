<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <title><fmt:message key="button.login"/></title>
</head>
<body>
<div style="text-align: right;">
    <a class="btn btn-primary btn-block mb-4" href="${pageContext.request.contextPath}/login?locale=en_US"><fmt:message
            key="lang.en"/></a>
    <a class="btn btn-primary btn-block mb-4" href="${pageContext.request.contextPath}/login?locale=ru_RU"><fmt:message
            key="lang.ru"/></a>
</div>
    <div style="text-align: center;">
            <div class="col-lg-6 mb-5 mb-lg-0">
                <div class="card cascading-right" style="
background: hsla(0, 0%, 100%, 0.55);
backdrop-filter: blur(30px);
">
                    <div class="card-body p-5 shadow-5 text-center">
                        <h2 class="fw-bold mb-5"><fmt:message key="button.login"/></h2>
                        <form:form action="login" metod="post">
                            <div class="form-outline mb-4">
                                <input type="text" name="username" placeholder="username" required
                                       autocomplete="new-password" class="form-control" id="formUsername"/>
                                <label class="form-label" for="formUsername"><fmt:message
                                        key="button.main.username"/></label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="password" name="password" placeholder="password" required
                                       autocomplete="new-password" class="form-control" id="formPassword"/>
                                <label class="form-label" for="formPassword"><fmt:message
                                        key="button.password"/></label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block mb-4"><fmt:message
                                    key="button.login"/></button>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
</body>
</html>
