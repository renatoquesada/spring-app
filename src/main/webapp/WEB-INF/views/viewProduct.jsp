<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Product Detail</h1>

            <p class="lead">Here is the detail information of the product!</p>
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
                        <strong>Manufacturer</strong> : ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong> : ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong> : ${product.productCondition}
                    </p>

                    <p>
                        <strong>Quantity</strong> :
                        <input id="Text1" type="text"  runat="server" ng-model="inputVal" ng-init="inputVal='Please input quantity'">
                    </p>

                    <h4>${product.productPrice} USD</h4>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}"/>
                    <c:set var="url" scope="page" value="/product/productList"/>
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory"/>
                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name != null}">

                        <p ng-controller="cartCtrl">
                            <a href="<c:url value="${url}"/>/all" class="btn btn-default">Back</a>
                            <a href="#" class="btn btn-warning btn-large"
                               ng-click="addToCart('${product.productId}')"><span
                                    class="glyphicon glyphicon-shopping-cart"></span>Order
                                Now</a>
                            <a href="<spring:url value="/customer/cart" />"
                               class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
                        </p>

                    </c:if>

                    <c:if test="${pageContext.request.userPrincipal.name == null}">

                        To checkout products please proceeed to login.
                        <a href="<spring:url value="/login" />"
                           class="btn btn-default"><span class="glyphicon glyphicon-hand-right"></span>Login</a>

                    </c:if>


                </div>
            </div>
        </div>


        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
