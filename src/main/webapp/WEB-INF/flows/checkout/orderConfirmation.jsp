<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<jsp:useBean id="now" class="java.util.Date"/>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Pedido</h1>

            <p class="lead">Confirmaci&oacute;n de pedido</p>
        </div>

        <div class="container">

            <div class="row">

                <form:form commandName="order" class="form-horizaontal">

                    <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 co-md-offset-3">

                        <div class="text-center">
                            <h1>Recibo</h1>
                        </div>
                        <div class="row">
                            <div class="col-xs-6 col-sm-6 col-md-6">
                                <address>
                                    <strong>Direcci&oacute;n de env&iacute;o</strong><br>
                                        ${order.cart.customer.shippingAddress.streetName}
                                    <br>
                                        ${order.cart.customer.shippingAddress.apartmentNumber}
                                    <br>
                                        ${order.cart.customer.shippingAddress.city}, ${order.cart.customer.shippingAddress.state}
                                    <br>
                                        ${order.cart.customer.shippingAddress.country}, ${order.cart.customer.shippingAddress.zipCode}
                                    <br>
                                </address>
                            </div>
                            <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                                <p>Hora del pedido: <fmt:formatDate type="date" value="${now}"/></p>
                            </div>
                        </div>


                        <div class="row">
                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th>Producto</th>
                                    <th>Cantidad</th>
                                    <th class="text-center">Precio</th>
                                    <th class="text-center">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="cartItem" items="${order.cart.cartItems}">
                                    <tr>
                                        <td class="col-md-9"><em>${cartItem.product.productName}</em></td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.quantity}</td>
                                        <td class="col-md-1"
                                            style="text-align: center">${cartItem.product.productPrice}</td>
                                        <td class="col-md-1" style="text-align: center">${cartItem.totalPrice}</td>
                                    </tr>
                                </c:forEach>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td class="text-right">
                                        <h4><strong>Total: </strong></h4>
                                    </td>
                                    <td class="text-center text-danger">
                                        <h4><strong>&#8353; ${order.cart.grandTotal}</strong></h4>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>

                        <input type="hidden" name="_flowExecutionKey"/>

                        <br><br>
                        <button class="btn btn-default" name="_eventId_backToCollectShippingDetail">Atr&aacute;s</button>
                        <input type="submit" value="Hacer el pedido" class="btn btn-default"
                               name="_eventId_orderConfirmed"/>
                        <button class="btn btn-default" name="_eventId_cancel">Cancelar</button>
                    </div>
                </form:form>

            </div>
        </div>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
