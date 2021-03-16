<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ include file="/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Our pupils</h1>
                <p class="mb-4">List of subjects our kindergarten <a href="/add">Add New</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Subjects list</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Action</th>
                                    <th>Admin Tools</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Action</th>
                                    <th>Admin Tools</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                    <c:forEach items="${subjects}" var="subject">
                                        <tr>
                                            <td>${subject.name}</td>
                                            <td><a href="/subject/details/${subject.id}">Details</a></td>
                                            <td>
                                                <a href="/deletesubject/${subject.id}">Delete</a>
                                                <a href="/editsubject/${subject.id}">Edit</a>
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