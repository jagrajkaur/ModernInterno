<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
		<!-- header -->
<%@ include file="template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container" style="margin-top: 10px">
                    <h1>Cart</h1>
                    <p>All the selected products in your shopping cart.....</p>
                </div>
            </div>
        </section>

        <div class="container" ng-app="cartApp">

            <div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">

                <div>
                    <a class="btn btn-danger pull-left" ng-click = "clearCart()"><span class="glyphicon glyphicon-remove-sign"></span> Clear Cart</a>
                    <a href="<spring:url value="/order/${cartId}" />" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Check out</a>
                </div>

                <br/><br/><br/>
                
              

                <table class="table table-hover">
                    <tr>
                        <th>Product Name</th>
                        <th>Unit Price</th>
                        <th>Quantity</th>
                        <th>Price</th>
                        <th>Action</th>
                    </tr>
                    <tr ng-repeat = "item in cart.cartItems">
                         <td>{{item.product.name}}</td>
                        <td>{{item.product.price}}</td>
                        <td>{{item.quantity}}</td>
                        <td>{{item.totalPrice}}</td>
                        <td><a href="#" class="label label-danger" ng-click="removeFromCart(item.product.pid)"><span class="glyphicon glyphicon-remove"></span>remove</a></td>
                    </tr>
                    <tr>
                        <th></th>
                        <th></th>
                        <th>Grand Total</th>
                        <th>{{calGrandTotal()}}</th>
                        <th></th>
                    </tr>
                </table>

                <a href="<spring:url value="/allProducts" />" class="btn btn-default">Continue Shopping</a>
            </div>
        </div>
        </div>
        </div>
        

<!-- My -->
<script src="<c:url value="/resources/js/controller.js" /> "></script>
<br><br><br>

				<!-- footer -->
<%@ include file="template/footer.jsp" %><br><br>
