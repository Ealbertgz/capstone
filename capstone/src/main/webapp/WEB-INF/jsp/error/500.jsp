<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="../include/header.jsp" />
<h1> Error 500</h1>

<sec:authorize access="hasAnyAuthority('admin')">
    <div style="margin-left:30px;" class="pb-5">
        <br><br>
        <c:if test="${not empty requestUrl}">
            <p>${requestUrl}</p>
        </c:if>
        <h3>Stack Trace</h3>
        <c:if test="${not empty message}">
            <p>${message}</p>
        </c:if>
        <c:if test="${not empty stackTrace}">
            <p>${stackTrace}</p>
        </c:if>
        <c:if test="${not empty rootCause}">
            <h3>Root Cause</h3>
            <p>${rootCause}</p>
        </c:if>
        <c:if test="${not empty rootTrace}">
            <p>${rootTrace}</p>
        </c:if>
    </div>
</sec:authorize>






<jsp:include page="../include/footer.jsp" />