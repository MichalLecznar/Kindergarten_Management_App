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
    <form:form method="post" action="/editsubject/${subject.id}" modelAttribute="subject" cssClass="register_form">
        <div >
            <h1>Edit Subject</h1>
            <p>Please fill in this form to edit subject.</p>
            <hr>

            <label for="name"><b>Name</b></label>
            <form:input type="text" placeholder="Enter Subject Name" id="name" path="name" />

            <hr>

            <button type="submit" class="registerbtn">Edit Subject</button>
        </div>

    </form:form>
</div>
</body>
</html>
