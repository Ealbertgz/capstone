<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="include/header.jsp" />

<%--<h1 class="page-title">This is my search page</h1>--%>

<%--<br>--%>
<!-- a page header -->
<section class="bg-dark text-light p-5 pt-lg-3 p-lg-0 text-center text-sm-start">
    <div class="container">
        <div class="row pt-1 pb-1">
            <h1 class="text-center text-white">Search <span class="text-warning">Page</span></h1>
        </div>
    </div>
</section>



<!-- a search form -->
<section>
    <div class="container">
        <div class="row justify-content-center pt-5 pb-3">
            <div class="col-8 text-center">
                <form action="/search">
                    <div class="mb-3">
                        <label for="search" class="form-label"><h4>Tutor Search</h4></label>
                        <input type="text" value="${search}" class="form-control" id="search" name="search" placeholder="Enter search term"/>
                    </div>
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </div>
</section>



<section>
    <div class="container">
        <div class="row pt-5">
            <div class="col-12">
                <h2 class="text-center">Tutors Found (${tutors.size()})</h2>
            </div>
        </div>
        <div class="row pt-3">
            <div class="col-12">
                <table class="table">
                    <tr>
                        <th>ID</th>
                        <th>Code</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Cost</th>
                        <th>Skills</th>
                        <th>Edit</th>
                    </tr>
                    <c:forEach items="${tutors}" var="tutor">
                        <tr>
                            <td>${tutor.id}</td>
                            <td>${tutor.tutorCode}</td>
                            <td>${tutor.tutorName}</td>
                            <td>${tutor.tutorDescription}</td>
                            <td>${tutor.tutorCost}</td>
                            <td>${tutor.tutorSkills}</td>
                            <td><a href="/?id=${tutor.id}">Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</section>



<jsp:include page="include/footer.jsp" />
