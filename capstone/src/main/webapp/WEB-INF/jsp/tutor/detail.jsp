<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../include/header.jsp"/>

<section class="bg-gray py-5">
    <div class="container">
        <h1 class="text-center mb-4">Tutor Detail</h1>
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Tutor Code: ${tutor.tutorCode}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">Tutor Name: ${tutor.tutorName}</h6>
                        <p class="card-text">Description: ${tutor.tutorDescription}</p>
                        <p class="card-text">Cost: ${tutor.tutorCost}</p>
                        <h6>Skills:</h6>
                        <ul class="list-group">
                            <c:forEach var="skill" items="${tutor.skills}">
                                <li class="list-group-item">${skill.skillName}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<jsp:include page="../include/footer.jsp"/>


