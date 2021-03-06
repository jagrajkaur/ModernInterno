var cartApp = angular.module ("cartApp", []);

cartApp.controller("cartCtrl", function($scope, $http){
	
    $scope.refreshCart = function(){
    	alert("inside refresh cart");
       $http.get('/ModernIntrno/rest/cart/' + $scope.cartId).success(function (data){
    	   
           $scope.cart = data;
          // $scope.cartItems = data.cartItems
       });
    };

    $scope.clearCart = function(){
        $http.delete('/ModernIntrno/rest/cart/' + $scope.cartId).success($scope.refreshCart());
    };

    $scope.initCartId = function(cartId){
    	
        $scope.cartId = cartId;
        $scope.refreshCart();
    };

    $scope.addToCart = function(productId){
        $http.post('/ModernIntrno/rest/cart/add/' + productId).success(function (){
            alert('Product successfully added to the cart!');
        });
    };

    $scope.removeFromCart = function(productId){
        $http.post('/ModernIntrno/rest/cart/remove/' + productId).success(function(data){
           $scope.refreshCart();
        });
    };

    var grandTotal = 0;
    $scope.calGrandTotal = function(){
       
        for (var i = 0; i < $scope.cart.cartItems.length; i++){
            grandTotal += $scope.cart.cartItems[i].totalPrice;
        }
    	
        return grandTotal;
    }
});