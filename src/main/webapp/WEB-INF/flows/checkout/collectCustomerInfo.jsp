<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Cliente</h1>

            <p class="lead">Detalles del cliente</p>
        </div>

        <form:form commandName="order" class="form-horizaontal">

            <h3>Informaci&oacute;n</h3>

            <div class="form-group">
                <label for="name">Nombre</label>
                <form:input path="cart.customer.customerName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Correo electr&oacute;nico</label>
                <form:input path="cart.customer.customerEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Tel&eacute;fono</label>
                <form:input path="cart.customer.customerPhone" id="phone" class="form-Control"/>
            </div>

            <input type="hidden" name="_flowExecutionKey"/>

            <br><br>
            <input type="submit" value="Continuar con el pedido" class="btn btn-default" name="_eventId_customerInfoCollected"/>
            <button class="btn btn-default" name="_eventId_cancel">Cancelar</button>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
