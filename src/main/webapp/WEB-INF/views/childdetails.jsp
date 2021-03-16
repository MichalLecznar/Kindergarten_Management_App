<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/header.jsp" %>

<h2>Child details:</h2>
<p><b>Identyfikator: </b><c:out value="${child.id}" default="not provided" /></p>
<p><b>Imię: </b><c:out value="${child.firstName}" default="not provided" /></p>
<p><b>Nazwisko: </b><c:out value="${child.lastName}" default="not provided" /></p>
<p><b>Wiek: </b><c:out value="${child.age}" default="not provided" /></p>
<p><b>Rodzic: </b><c:out value="${parent.name}" default="not provided" /></p>
<p><b>Email: </b><c:out value="${parent.email}" default="not provided" /></p>
<a class="nav-link" href="/list">Back to list</a>
<a class="nav-link" href="/child/assigntosubject/${child.id}">Assign to subject</a>
<a class="nav-link" href="/child/topdf/${child.id}">To ---> PDF</a>

<%@ include file="/footer.jsp" %>