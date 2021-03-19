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
<form:form method="post" modelAttribute="userChild" cssClass="register_form">
    <div >
        <h1>Add Child</h1>
        <p>Please fill in this form to add your child to our kindergarden.</p>
        <hr>

        <label for="firstName"><b>Name</b></label>
        <form:input type="text" placeholder="Enter Name" id="firstName" path="firstName" />

        <label for="lastName"><b>Lastname</b></label>
        <form:input type="text" placeholder="Enter Lastname" id="lastName" path="lastName"  />

        <label for="age"><b>Age</b></label>
        <form:input type="age" placeholder="Enter Age" id="age" path="age"  />

            <%--        <label for="psw-repeat"><b>Repeat Password</b></label>--%>
            <%--        <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>--%>
        <hr>

        <button type="submit" class="registerbtn">Register Child</button>
    </div>

</form:form>
</div>
</body>
</html>

<%@ include file="/footer.jsp" %>