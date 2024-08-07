<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<section class="bg-gray py-5">
    <div class="container">
        <div class="row pt-5 pb-5">
            <c:if test="${empty form.tutorId}">
                <h1 class="text-center">Create Tutor</h1>
            </c:if>
            <c:if test="${not empty form.tutorId}">
                <h1 class="text-center">Edit Tutor</h1>
            </c:if>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <form action="/tutor/createSubmit" method="post" class="form-horizontal">
                    <input type="hidden" name="tutorId" value="${form.tutorId}">

                    <!-- tutor_code input -->
                    <div class="form-group row">
                        <label for="tutorCodeId" class="col-sm-2 col-form-label">Tutor Code</label>
                        <div class="col-sm-10">
                            <input type="text" id="tutorCodeId" name="tutorCode" class="form-control" value="${form.tutorCode}">
                        </div>
                    </div>

                    <!-- tutor_name input -->
                    <div class="form-group row">
                        <label for="tutorNameId" class="col-sm-2 col-form-label">Tutor Name</label>
                        <div class="col-sm-10">
                            <input type="text" id="tutorNameId" name="tutorName" class="form-control" value="${form.tutorName}">
                        </div>
                    </div>

                    <!-- tutor_description input -->
                    <div class="form-group row">
                        <label for="tutorDescriptionId" class="col-sm-2 col-form-label">Tutor Description</label>
                        <div class="col-sm-10">
                            <textarea id="tutorDescriptionId" name="tutorDescription" class="form-control" rows="4">${form.tutorDescription}</textarea>
                        </div>
                    </div>

                    <!-- tutor_cost input -->
                    <div class="form-group row">
                        <label for="tutorCostId" class="col-sm-2 col-form-label">Tutor Cost</label>
                        <div class="col-sm-10">
                            <input type="number" id="tutorCostId" name="tutorCost" class="form-control" value="${form.tutorCost}">
                        </div>
                    </div>

                    <!-- skills input -->
                    <div class="form-group row">
                        <label for="skills" class="col-sm-2 col-form-label">Skills</label>
                        <div class="col-sm-10">
                            <select id="skills" name="skills" class="form-control" multiple>
                                <c:forEach var="skill" items="${skills}">
                                    <option value="${skill.skillId}">${skill.skillName}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group row">
                        <div class="col-sm-10 offset-sm-2">
                            <button type="submit" class="btn btn-primary btn-block">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../include/footer.jsp"/>