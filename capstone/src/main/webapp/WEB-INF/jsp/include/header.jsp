<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="/pub/css/style.css">
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    <title>Online Tutors</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark py-3 fixed-top">
    <div class="container">
        <a href="/" class="navbar-brand">Online Tutors</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navmenu">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navmenu">
            <ul class="navbar-nav ms-auto">
<%--                <sec:authorize access="hasAnyAuthority('admin')">--%>
                <li class="nav-item"><a class="nav-link" href="/users/create-user">Create User</a></li>
<%--                </sec:authorize>--%>

                <sec:authorize access="hasAnyAuthority('admin')">
                <li class="nav-item"><a class="nav-link" href="/tutor/create-tutor">Create Tutor</a></li>
                </sec:authorize>

                <li class="nav-item"><a class="nav-link" href="/skill-search">Skill Search</a></li>
                <li class="nav-item"><a class="nav-link" href="/search">Search</a></li>
                <li class="nav-item"><a href="#learn" class="nav-link">What you'll learn</a></li>
                <li class="nav-item"><a href="#questions" class="nav-link">Questions</a></li>
                <li class="nav-item"><a href="#instructors" class="nav-link">Instructors</a></li>

                <sec:authorize access="isAuthenticated()">
                    <a href="/account/logout">Logout</a>
                    <span class="nav-link"><sec:authentication property="name"/></span>
                </sec:authorize>

                <sec:authorize access="!isAuthenticated()">
                    <a href="/account/loginPageUrl">Login</a>
                </sec:authorize>

<%--                <c:if test="${sessionScope.user != null && sessionScope.user.hasRole('ROLE_ADMIN')}">--%>
<%--                    <li class="nav-item"><a class="nav-link" href="/users/create-user">Create User</a></li>--%>
<%--                    <li class="nav-item"><a class="nav-link" href="/tutor/create">Create Tutor</a></li>--%>
<%--                </c:if>--%>
            </ul>
        </div>
    </div>
</nav>


