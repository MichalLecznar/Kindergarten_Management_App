<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>


<%--TODO uzupełnić treścią Aktualności dla rodziców--%>
<p>Strona główna po zalogowaniu. Cześć ${name}</p>

<div class="row">

    <!-- Content Column -->
    <div class="col-lg-6 mb-4">



    <div class="col-lg-6 mb-4">

        <!-- Illustrations -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Annoucement 1</h6>
            </div>
            <div class="card-body">
                <div class="text-center">
<%--                    <img class="img-fluid px-3 " style="width: 25rem;"--%>
<%--                         src="img/undraw_posting_photo.svg" alt="">--%>
                </div>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut corporis cupiditate,
                    error impedit saepe sunt velit veniam? Ad dolorem eum explicabo minima nam,
                    natus non placeat quisquam recusandae soluta vitae.</p>
            </div>
        </div>

        <!-- Approach -->
        <div class="card shadow mb-4">
            <div class="card-header py-3">
                <h6 class="m-0 font-weight-bold text-primary">Annoucement 2</h6>
            </div>
            <div class="card-body">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    Ab beatae blanditiis delectus dolores doloribus dolorum eos error expedita inventore,
                    itaque maxime mollitia odit perspiciatis placeat quia, quisquam repudiandae rerum vitae!</p>
                <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                    A adipisci animi commodi distinctio earum eius, enim impedit itaque molestiae necessitatibus
                    nobis officia placeat quas quasi quia reiciendis reprehenderit repudiandae veniam!/p>
            </div>
        </div>

    </div>
    </div>
</div>

<%@ include file="/footer.jsp" %>