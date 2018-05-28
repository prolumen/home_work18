<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; ISO-8859-1; charset=UTF-8" %>
<html>
<%@include file="/header.jsp"  %>

    <c:set var="salary" scope="session" value="${23400*2}"/>
    <c:if test="${salary > 45000}">
        <p>Salary = <c:out value="${salary}"/><p>
    </c:if>

        <c:set var="alter" scope="session" value="${param.age}"/>
        <c:choose>
        <c:when test="${alter <= 28}">
        Переменная alter <= 0
        </c:when>
        <c:when test="${alter > 28}">
        Переменная alter > 28
        </c:when>
        <c:otherwise>
        Не выбрано ни одно условие.
        </c:otherwise>
        </c:choose>

        <%@include file="../footer.jsp"  %>
    </body>
    </html>
