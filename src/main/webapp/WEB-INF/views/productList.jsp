<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<script>
    $(document).ready(function () {
        var searchCondition = '${searchCondition}';

        $('#searchTable').DataTable();//initializes the search functionality

    });

</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Verdes Org&aacute;nicos: puro org&aacute;nico!</h1>

            <p class="lead">Estos son nuestros productos!</p>
        </div>

        <table id="searchTable"  class="table table-striped table-hover" data-locale="es_CR">
            <thead>
            <tr class="bg-success">
                <th>Imagen</th>
                <th>Nombre</th>
                <th>Categor&iacute;a</th>
                <th>Tipo</th>
                <th>Precio</th>
                <th></th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>&#8353; ${product.productPrice} </td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span> Agregar a carrito</a></td>
                </tr>
            </c:forEach>
        </table>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
