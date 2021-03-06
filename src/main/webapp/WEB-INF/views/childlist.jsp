<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
    <title>All children:</title>
</head>
<body>

<table border="1" class="table">
    <tr><th>id</th><th>age</th><th>name</th><th>surname</th></tr>
    <c:forEach items="${children}" var="child">
        <tr>
            <td>${child.id}</td>
            <td>${child.age}</td>
            <td>${child.firstName}</td>
            <td>${child.lastName}</td>
        </tr>
    </c:forEach>
</table>

<%--<div class="container-fluid">--%>

<%--    <!-- Page Heading -->--%>
<%--    <h1 class="h3 mb-2 text-gray-800">Tables</h1>--%>
<%--    <!-- DataTales Example -->--%>
<%--    <div class="card shadow mb-4">--%>
<%--        <div class="card-header py-3">--%>
<%--            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>--%>
<%--        </div>--%>
<%--        <div class="card-body">--%>
<%--            <div class="table-responsive">--%>
<%--                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>Id</th>--%>
<%--                        <th>Age</th>--%>
<%--                        <th>Name</th>--%>
<%--                        <th>Surname</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                    <c:forEach items="${children}" var="child">&ndash;%&gt;--%>
<%--                                <tr>--%>
<%--                                    <td>${child.id}</td>--%>
<%--                                    <td>${child.age}</td>--%>
<%--                                    <td>${child.firstName}</td>--%>
<%--                                    <td>${child.lastName}</td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>

<%--</div>--%>
<%--<!-- /.container-fluid -->--%>
</body>
</html>