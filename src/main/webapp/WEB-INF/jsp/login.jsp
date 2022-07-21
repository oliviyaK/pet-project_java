<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<html>
<head>
    <title>Login</title>
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
                        <h2 class="fw-bold mb-5">Login</h2>
                        <form:form action="login" metod="post">
                            <div class="form-outline mb-4">
                                <input type="text" name="username" placeholder="username" required
                                       autocomplete="new-password" class="form-control" id="formUsername"/>
                                <label class="form-label" for="formUsername">Username</label>
                            </div>
                            <div class="form-outline mb-4">
                                <input type="password" name="password" placeholder="password" required
                                       autocomplete="new-password" class="form-control" id="formPassword"/>
                                <label class="form-label" for="formPassword">Password</label>
                            </div>

                            <button type="submit" class="btn btn-primary btn-block mb-4">Login
                            </button>

                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>
</html>
