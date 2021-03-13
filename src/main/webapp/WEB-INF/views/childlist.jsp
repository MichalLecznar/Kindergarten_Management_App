<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ include file="/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Our pupils</h1>
                <p class="mb-4">List of children attending our kindergarten <a target="_blank"
                       href="https://datatables.net">Link TODO</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Children's list</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Age</th>
                                    <th>Action</th>
                                    <th>Admin Tools</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Age</th>
                                    <th>Action</th>
                                    <th>Admin Tools</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                    <c:forEach items="${children}" var="child">
                                        <tr>
                                            <td>${child.firstName}</td>
                                            <td>${child.lastName}</td>
                                            <td>${child.age}</td>
                                            <td><a href="/child/details/${child.id}">Details</a></td>
                                            <td>
                                                <a href="/delete/${child.id}">Delete</a>
                                                <a href="/edit/${child.id}">Edit</a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>

        <!-- Footer -->
<%@ include file="/footer.jsp" %>