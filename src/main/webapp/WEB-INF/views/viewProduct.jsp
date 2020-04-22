<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Detalle del producto</h1>

            <p class="lead">Ingrese la cantidad y de click en Ordenar</p>
        </div>

        <div class="container" ng-app="cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                         style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                        <strong>Proveedor</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Categor&iacute;a</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condici&oacute;n</strong> : ${product.productCondition}
                    </p>

                    <p>
                        <strong>Cantidad</strong> :
                        <input id="Text1" type="text"  runat="server" ng-model="inputVal" ng-init="inputVal='***Ingrese la cantidad'">
                    </p>

                    <h4>&#8353;${product.productPrice}</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/product/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory"/>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">

                        <p ng-controller="cartCtrl">
                            <a href="<c:url value="${url}"/>/all" class="btn btn-default">Atr&aacute;s</a>
                            <a href="#" class="btn btn-warning btn-large"
                               ng-click="addToCart('${product.productId}')"><span
                                    class="glyphicon glyphicon-shopping-cart"></span>Agregar a carrito</a>
                            <a href="<spring:url value="/customer/cart" />"
                               class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>Ver carrito</a>
                        </p>

                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name == null}">

                        Para hacer pedidos por favor entrar como usuario registrado
                        <a href="<spring:url value="/login" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>Ingresar</a>

                    </c:if>


                </div>
            </div>
        </div>


        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
