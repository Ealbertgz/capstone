<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../include/header.jsp"/>

<!-- Create/Edit Tutor Heading Section -->
<section class="bg-dark text-light p-5 pt-lg-3 p-lg-0 text-center text-sm-start">
    <div class="container">
        <div class="row pt-5 pb-1">
            <c:if test="${empty form.tutorId}">
                <h4 class="text-center text-white">Create Tutor</h4>
            </c:if>
            <c:if test="${not empty form.tutorId}">
                <h4 class="text-center text-white">Edit Tutor</h4>
            </c:if>
        </div>
    </div>
</section>

<!-- Rest of the tutor/create content follows... -->



<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <form action="/tutor/createSubmit" method="post" class="form-horizontal">
                <input type="hidden" name="tutorId" value="${form.tutorId}">

                <!-- tutor_code input -->
                <div class="form-group mb-3">
                    <label for="tutorCodeId" class="form-label">Tutor Code</label>
                    <input type="text" id="tutorCodeId" name="tutorCode" class="form-control" value="${form.tutorCode}">
                </div>

                <!-- tutor_name input -->
                <div class="form-group mb-3">
                    <label for="tutorNameId" class="form-label">Tutor Name</label>
                    <input type="text" id="tutorNameId" name="tutorName" class="form-control" value="${form.tutorName}">
                </div>

                <!-- tutor_description input -->
                <div class="form-group mb-3">
                    <label for="tutorDescriptionId" class="form-label">Tutor Description</label>
                    <textarea id="tutorDescriptionId" name="tutorDescription" class="form-control" rows="4">${form.tutorDescription}</textarea>
                </div>

                <!-- tutor_cost input -->
                <div class="form-group mb-3">
                    <label for="tutorCostId" class="form-label">Tutor Cost</label>
                    <input type="number" id="tutorCostId" name="tutorCost" class="form-control" value="${form.tutorCost}">
                </div>

                <!-- skills input -->
                <div class="form-group mb-3">
                    <label for="skills" class="form-label">Skills</label>
                    <select id="skills" name="skills" class="form-control" multiple>
                        <c:forEach var="skill" items="${skills}">
                            <option value="${skill.skillId}">${skill.skillName}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-group">
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<jsp:include page="../include/footer.jsp"/>
