<%--
  Created by IntelliJ IDEA.
  User: majk
  Date: 25.02.2021
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ include file="/header.jsp" %>

<html>
<head>
    <style>
        .register_form {
            display: table-cell;
            text-align: center;
            vertical-align: middle;
        }
        .parent {
            display: table;
            width: 100%;
        }
    </style>
</head>
<body>
<div class="parent">
<form:form method="post" modelAttribute="meal" cssClass="register_form">
    <div >
        <h1>Add Meal</h1>
        <p>Fill this form to add new meal.</p>
        <hr>

        <label for="day"><b>Day</b></label>
        <form:input type="text" placeholder="Day" id="day" path="day" />

        <label for="dailyMenu"><b>Description</b></label>
        <form:input type="text" placeholder="Meal Description" id="dailyMenu" path="dailyMenu" />

        <hr>

        <button type="submit" class="registerbtn">Add Meal</button>
    </div>

</form:form>
</div>
</body>
</html>

<%@ include file="/footer.jsp" %>