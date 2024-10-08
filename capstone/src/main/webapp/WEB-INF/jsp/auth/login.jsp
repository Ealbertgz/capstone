<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp" />

<section style="background-color:#248E90">
    <div class="container">
        <div class="row pt-5 pb-5">
            <h1 class="text-center">Login page</h1>
        </div>
    </div>
</section>

<section>
    <div class="container">

        <c:if test="${param['error'] eq ''}">
            <div class="row pt-5 justify-content-center">
                <div class="col-6">
                    <div class="alert alert-danger" role="alert">Invalid Username or Password</div>
                </div>
            </div>
        </c:if>

        <div class="row pt-5 ">
            <div class="col-12">
                <form action="/account/loginProcessingURL" method="post">

                    <!-- email input -->
                    <div class="row align-items-center justify-content-center">
                        <div class="col-2">
                            <label for="usernameId" class="col-form-label">Email</label>

                        </div>
                        <div class="col-4">
                            <input type="text" id="usernameId" name="username" class="form-control"
                            />
                        </div>
                    </div>


<!-- password input field -->
<div class="row align-items-center justify-content-center pt-3">
    <div class="col-2">
        <label for="passwordId" class="col-form-label">Password</label>
    </div>
    <div class="col-4">
        <input type="password"
               id="passwordId"
               name="password"
               class="form-control" />
    </div>
</div>
<div class="row justify-content-center pt-3 ">
    <div class="col-auto text-center">
        <button type="submit" class="btn btn-primary">Log in</button>
    </div>
</div>
</form>
</div>
</div>
</div>
</section>

<jsp:include page="../include/footer.jsp" />