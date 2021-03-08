<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ include file="/header.jsp" %>

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <!-- Page Heading -->
                <h1 class="h3 mb-2 text-gray-800">Nasi podopieczni</h1>
                <p class="mb-4">Lista dzieci uczęszczających do naszego przedszkola <a target="_blank"
                       href="https://datatables.net">Jakieś przekierowanie</a>.</p>

                <!-- DataTales Example -->
                <div class="card shadow mb-4">
                    <div class="card-header py-3">
                        <h6 class="m-0 font-weight-bold text-primary">Lista dzieci</h6>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Age</th>
                                </tr>
                                </thead>
                                <tfoot>
                                <tr>
                                    <th>Name</th>
                                    <th>Surname</th>
                                    <th>Age</th>
                                </tr>
                                </tfoot>
                                <tbody>
                                    <c:forEach items="${children}" var="child">
                                        <tr>
                                            <td>${child.firstName}</td>
                                            <td>${child.lastName}</td>
                                            <td>${child.age}</td>
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