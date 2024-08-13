<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<section class="container mt-5">
    <h1>Admin Dashboard</h1>
    <ul class="list-group">
        <li class="list-group-item"><a href="/admin/createUser">Create User</a></li>
        <li class="list-group-item"><a href="/admin/createTutor">Create Tutor</a></li>
        <li class="list-group-item"><a href="/admin/assignRole">Assign Role to User</a></li>
    </ul>
</section>

<jsp:include page="../include/footer.jsp" />