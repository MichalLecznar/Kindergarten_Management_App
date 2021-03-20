<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ include file="/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Our pupils</h1>
                <p class="mb-4">Menu our kindergarten <a href="/addmeal">Add New</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Menu</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Day</th>
                                    <th>Description</th>
<%--                                    <th>Admin Tools</th>--%>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Day</th>
                                    <th>Description</th>
<%--                                    <th>Admin Tools</th>--%>
                                </tr>
                                </tfoot>
                                <tbody>
                                    <c:forEach items="${dailymeals}" var="meal">
                                        <tr>
                                            <td>${meal.day}</td>
                                            <td>${meal.dailyMenu}</td>

<%--                                            <td>--%>
<%--                                                <a href="/deletesubject/${subject.id}">Delete</a>--%>
<%--                                                <a href="/editsubject/${subject.id}">Edit</a>--%>
<%--                                            </td>--%>
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