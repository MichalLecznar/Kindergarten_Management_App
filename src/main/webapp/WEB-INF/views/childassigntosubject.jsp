<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<%--<html>--%>
<%--<head>--%>
<%--    <style>--%>
<%--        .register_form {--%>
<%--            display: table-cell;--%>
<%--            text-align: center;--%>
<%--            vertical-align: middle;--%>
<%--        }--%>
<%--        .parent {--%>
<%--            display: table;--%>
<%--            width: 100%;--%>
<%--        }--%>
<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>
<%--<div class="parent">--%>


<%@ include file="/header.jsp" %>

    <form:form method="post" action="/child/assigntosubject/${child.id}" modelAttribute="child" cssClass="register_form">

        <p><b>Identyfikator: </b><c:out value="${child.id}" default="not provided" /></p>
        <p><b>Imię: </b><c:out value="${child.firstName}" default="not provided" /></p>
        <p><b>Nazwisko: </b><c:out value="${child.lastName}" default="not provided" /></p>
        <p><b>Wiek: </b><c:out value="${child.age}" default="not provided" /></p>

        <div >
            <h1>Sign Child</h1>
            <p>Select the classes you want to enroll your child for.</p>
            <hr>

<%--            <label for="subject">Subject</label>--%>
<%--            <form:select path="subject.id" id="subject"--%>
<%--                         items="${subjects}" itemValue="id" itemLabel="name" />--%>
            <select name="subId">
                <c:forEach items="${subjects}" var="subject">
                    <option value="${subject.id}" name="subId" id="subId">${subject.name}</option>
                </c:forEach>
            </select>


            <hr>

            <button type="submit" class="registerbtn">Sign up for subject</button>
        </div>

    </form:form>

<%@ include file="/footer.jsp" %>
<%--</div>--%>
<%--</body>--%>
<%--</html>--%>