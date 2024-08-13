<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<jsp:include page="../include/header.jsp"/>

<section class="bg-dark text-light p-5 pt-lg-3 p-lg-0 text-center text-sm-start">
    <div class="container">
        <div class="row pt-1 pb-1">
            <h1 class="text-center text-white">User Detail <span class="text-warning">Page</span></h1>
        </div>
        <div class="row justify-content-center mt-4">
            <div class="col-md-8">
                <div class="card bg-secondary text-white">
                    <div class="card-body">
                        <h5 class="card-title">Email: ${user.email}</h5>
                        <!-- Displaying the length of the password -->
                        <p class="card-text">Password Length: ${fn:length(user.password)}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../include/footer.jsp"/>
