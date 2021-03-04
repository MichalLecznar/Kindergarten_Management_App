<%--
  Created by IntelliJ IDEA.
  User: majk
  Date: 25.02.2021
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/headerforregister.jsp" %>

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
    <title>Register</title>
</head>
<body>
<div class="parent">
<form:form method="post" modelAttribute="user" cssClass="register_form">
    <div >
        <h1>Register</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>

        <label for="name"><b>Name</b></label>
        <form:input type="text" placeholder="Enter Name" id="name" path="name" />
        <form:errors path="name"/>

        <label for="email"><b>Email</b></label>
        <form:input type="text" placeholder="Enter Email" id="email" path="email"  />
        <form:errors path="email"/>

        <label for="password"><b>Password</b></label>
        <form:input type="password" placeholder="Enter Password" id="password" path="password"  />
        <form:errors path="password"/>

        <hr>

        <button type="submit" class="registerbtn">Register</button>
    </div>

    <div class="container signin">

<%--        TODO tu dodac przekierownie do logowania--%>
        <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>
</form:form>
</div>
</body>
</html>

<%@ include file="/footer.jsp" %>