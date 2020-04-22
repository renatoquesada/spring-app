/**
 * Created by renato on 1/11/2016.
 */

var cartApp = angular.module("cartApp", []);

cartApp.controller("cartCtrl", function ($scope, $http) {

    $scope.refreshCart = function () {
        $http.get('/verdes-store/rest/cart/' + $scope.cartId).success(function (data) {
            $scope.cart = data;
        });
    };

    $scope.clearCart = function () {
        $http.delete('/verdes-store/rest/cart/' + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function (cartId) {
        $scope.cartId = cartId;
        $scope.refreshCart(cartId);
    };

    $scope.addToCart = function (productId) {
        $http.put('/verdes-store/rest/cart/add/' + productId+'/'+ $scope.inputVal).success(function () {
            alert("Producto exitosamente agregado a su carrito!, cantidad: " + $scope.inputVal)
        });
    };

    $scope.removeFromCart = function (productId) {
        $http.put('/verdes-store/rest/cart/remove/' + productId).success(function (data) {
            $scope.refreshCart();
        });
    };

    $scope.calGrandTotal = function () {
        var grandTotal = 0;
        for (var i = 0; i < $scope.cart.cartItems.length; i++) {
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }
        return grandTotal;
    };

});