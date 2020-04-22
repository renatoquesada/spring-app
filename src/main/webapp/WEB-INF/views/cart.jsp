<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Carrito</h1>

                    <p>Estos son los productos en su carrito de compras</p>
                </div>
            </div>
        </section>

        <section class="container" ng-app="cartApp">
            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
                <div>
                    <a class="btn btn-danger pull-left" ng-click="clearCart()"><span
                            class="glyphicon glyphicon-remove-sign"></span>Limpiar carrito</a>

                    <a href="<spring:url value="/order/${cartId}"/>" class="btn btn-success pull-right"><span class="glyphicon-shopping-cart glyphicon"></span> Hacer el pedido
                    </a>

                </div>

                <table class="table table-hover">
                    <tr>
                        <th>Producto</th>
                        <th>Precio unitario</th>
                        <th>Cantidad</th>
                        <th>Precio total</th>
                        <th>Acci&oacute;n</th>
                    </tr>
                    <tr ng-repeat="item in cart.cartItems">
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.productId)">
                            <span class="glyphicon glyphicon-remove"></span>Eliminar</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>

                    <tr>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>


                </table>

                <a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continuar comprando</a>
            </div>
        </section>

    </div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<%@include file="/WEB-INF/views/template/footer.jsp" %>