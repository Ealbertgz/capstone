<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<section class="container mt-5">
    <h1>Assign Role to User</h1>
    <form action="/admin/assignRole" method="post">
        <div class="mb-3">
            <label for="email" class="form-label">User Email</label>
            <input type="email" class="form-control" id="email" name="email" required>
        </div>
        <div class="mb-3">
            <label for="roleName" class="form-label">Role Name</label>
            <input type="text" class="form-control" id="roleName" name="roleName" required>
        </div>
        <button type="submit" class="btn btn-primary">Assign Role</button>
    </form>
</section>

<jsp:include page="../include/footer.jsp" />