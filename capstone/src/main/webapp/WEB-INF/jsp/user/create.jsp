<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp" />

<section class="container mt-5">
    <h1>Create User</h1>
    <form action="/users/submit-user" method="get">
        <input type="hidden" name="userId" value="${form.userId}">
        <div class="mb-3">
            <label for="emailId" class="form-label">Email</label>
            <input type="email" class="form-control" id="emailId" name="email" required>
        </div>
        <div class="mb-3">
            <label for="passwordId" class="form-label">Password</label>
            <input type="password" class="form-control" id="passwordId" name="password" required>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
    </form>
</section>

<jsp:include page="../include/footer.jsp" />