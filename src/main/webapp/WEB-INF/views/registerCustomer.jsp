<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Registro de cliente</h1>

            <p class="lead">Agregue sus datos a continuaci&oacute;n</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post"
                   commandName="customer">

            <h3>Informaci&oacute;n b&aacute;sica</h3>

            <div class="form-group">
                <label for="name">Nombre</label>
                <form:errors path="customerName" cssStyle="color: #ff0000"/>
                <form:input path="customerName" id="name" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="email">Correo electr&oacute;nico</label>
                <span style="color: #ff0000">${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color: #ff0000"/>
                <form:input path="customerEmail" id="email" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="phone">Tel&eacute;fono</label>
                <form:input path="customerPhone" id="phone" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="username">Usuario</label>
                <span style="color: #ff0000">${usernameMsg}</span>
                <form:errors path="username" cssStyle="color: #ff0000"/>
                <form:input path="Username" id="username" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="password">Contrase&ntilde;a</label>
                <form:errors path="password" cssStyle="color: #ff0000"/>
                <form:password path="password" id="password" class="form-Control"/>
            </div>


            <h3>Direcci&oacute;n de env&iacute;o</h3>

            <div class="form-group">
                <label for="shippingStreet">Detalles de direcci&oacute;n</label>
                <form:input path="shippingAddress.streetName" id="shippingStreet" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingApartmentNumber">N&uacute;mero de casa o apartamento</label>
                <form:input path="shippingAddress.apartmentNumber" id="shippingApartmentNumber" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCity">Cant&oacute;n</label>
                <form:input path="shippingAddress.city" id="shippingCity" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingState">Distrito</label>
                <form:input path="shippingAddress.state" id="shippingState" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingCountry">Provincia</label>
                <form:input path="shippingAddress.country" id="shippingCountry" class="form-Control"/>
            </div>

            <div class="form-group">
                <label for="shippingZip">C&oacute;digo postal</label>
                <form:input path="shippingAddress.zipCode" id="shippingZip" class="form-Control"/>
            </div>

            <br><br>
            <input type="submit" value="Agregar" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Cancelar</a>
        </form:form>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
