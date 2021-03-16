<%--
  Created by IntelliJ IDEA.
  User: majk
  Date: 25.02.2021
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


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
<form:form method="post" modelAttribute="subject" cssClass="register_form">
    <div >
        <h1>Add Subject</h1>
        <p>Fill this form to add new subject.</p>
        <hr>

        <label for="name"><b>Name</b></label>
        <form:input type="text" placeholder="Subject Name" id="name" path="name" />

        <hr>

        <button type="submit" class="registerbtn">Add Subject</button>
    </div>

</form:form>
</div>
</body>
</html>
