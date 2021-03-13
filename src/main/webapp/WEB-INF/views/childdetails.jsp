<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/header.jsp" %>

<h2>Child details:</h2>
<p><c:out value="${child.id}" default="not provided" /></p>
<p><c:out value="${child.firstName}" default="not provided" /></p>
<p><c:out value="${child.lastName}" default="not provided" /></p>
<p><c:out value="${child.age}" default="not provided" /></p>
<p><c:out value="${child.user.name}" default="not provided" /></p>
<a class="nav-link" href="/list">Back to list</a>
<a class="nav-link" href="/child/topdf/${child.id}">To ---> PDF</a>

<%@ include file="/footer.jsp" %>