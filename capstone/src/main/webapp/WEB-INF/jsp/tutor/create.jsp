<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<section style="background-color:gray">
    <div class="container">
        <div class="row pt-5 pb-5">
            <c:if test="${empty form.tutorId}">
                <h1 class="text-center">Create Tutor</h1>
            </c:if>
            <c:if test="${not empty form.tutorId}">
                <h1 class="text-center">Edit Tutor</h1>
            </c:if>
        </div>
    </div>
</section>

<c:if test="${not empty errorMessage}">
    <section>
        <div class="row">
            <div class="col-auto">
                <div class="alert alert-danger">
                        ${errorMessage}
                </div>
            </div>
        </div>
    </section>
</c:if>

<section>
    <div class="container">
        <div class="row pt-5 ">
            <div class="col-12">
                <form action="/tutor/createSubmit" method="post">
                    <input type="hidden" name="tutorId" value="${form.tutorId}">

                    <!-- tutor_code input -->
                    <div class="row align-items-center justify-content-center">
                        <div class="col-2">
                            <label for="tutorCodeId" class="col-form-label">Tutor Code</label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="tutorCodeId" name="tutorCode" class="form-control">
                        </div>
                    </div>

                    <!-- tutor_name input -->
                    <div class="row align-items-center justify-content-center pt-3">
                        <div class="col-2">
                            <label for="tutorNameId" class="col-form-label">Tutor Name</label>
                        </div>
                        <div class="col-4">
                            <input type="text" id="tutorNameId" name="tutorName" class="form-control">
                        </div>
                    </div>

                    <!-- tutor_description input -->
                    <div class="row align-items-center justify-content-center pt-3">
                        <div class="col-2">
                            <label for="tutorDescriptionId" class="col-form-label">Tutor Description</label>
                        </div>
                        <div class="col-4">
                            <textarea id="tutorDescriptionId" name="tutorDescription" class="form-control"></textarea>
                        </div>
                    </div>

                    <!-- tutor_cost input -->
                    <div class="row align-items-center justify-content-center pt-3">
                        <div class="col-2">
                            <label for="tutorCostId" class="col-form-label">Tutor Cost</label>
                        </div>
                        <div class="col-4">
                            <input type="number" id="tutorCostId" name="tutorCost" class="form-control">
                        </div>
                    </div>

                    <div class="row justify-content-center pt-3 ">
                        <div class="col-auto text-center">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../include/footer.jsp"/>
