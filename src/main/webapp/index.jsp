<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="dist/output.css" rel="stylesheet">
</head>
<body>
<div class="navbar bg-base-100">
    <div class="flex-1">
        <a class="btn btn-ghost text-xl">Company</a>
    </div>
    <div class="flex-none">
        <ul class="menu menu-horizontal px-1">
            <c:choose>
                <c:when test="${empty sessionScope.user}">
                    <li><a href="057/login">Login</a></li>
                </c:when>
                <c:otherwise>
                    <li><a href="057/login">Logout</a></li>
                </c:otherwise>
            </c:choose>

            <li>
                <details>
                    <summary>
                        Organization
                    </summary>
                    <ul class="p-2 bg-base-100 rounded-t-none">
                    <li><a href="#">Office</a></li>
                    <li><a href="#">Employee</a></li>
                    </ul>
                </details>
            </li>
        </ul>
    </div>
</div>

<div class="hero min-h-screen" style="background-image: url(https://foyr.com/learn/wp-content/uploads/2021/08/modern-office-design-1024x585.png);">
    <div class="hero-overlay bg-opacity-80"></div>
    <div class="hero-content text-center" id="content">
        <div class="max-w-md">
            <h1 class="text-5xl font-bold">Company Organization</h1>
            <p class="py-6">Provident cupiditate voluptatem et in. Quaerat fugiat ut assumenda excepturi exercitationem quasi. In deleniti eaque aut repudiandae et a id nisi.</p>
            <button class="btn btn-primary">Get Started</button>
        </div>
    </div>
</div>
</body>
</html>