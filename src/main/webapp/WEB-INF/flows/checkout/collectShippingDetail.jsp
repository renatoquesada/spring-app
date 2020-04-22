<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cliente</h1>

            <p class="lead">Detalles del cliente</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

        <h3>Direcci&oacute;n de entrega</h3>

        <div class="form-group">
            <label for="shippingStreet">Detalle de direcci&oacute;n</label>
            <form:input path="cart.customer.shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingApartmentNumber">N&uacute;mero de casa o apartamento</label>
            <form:input path="cart.customer.shippingAddress.apartmentNumber" id="shippingApartmentNumber"
                        class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCity">Cant&oacute;n</label>
            <form:input path="cart.customer.shippingAddress.city" id="shippingCity" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingState">Distrito</label>
            <form:input path="cart.customer.shippingAddress.state" id="shippingState" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingCountry">Provincia</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingCountry" class="form-Control"/>
        </div>

        <div class="form-group">
            <label for="shippingZip">C&oacute;digo postal</label>
            <form:input path="cart.customer.shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
        </div>

        <input type="hidden" name="_flowExecutionKey"/>

        <br><br>
        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Atr&aacute;s</button>
        <input type="submit" value="Continuar con el pedido" class="btn btn-default" name="_eventId_shippingDetailCollected"/>
        <button class="btn btn-default" name="_eventId_cancel">Cancelar</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
