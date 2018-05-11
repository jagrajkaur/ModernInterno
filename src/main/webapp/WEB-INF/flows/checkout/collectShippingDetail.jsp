<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container container-wrapper jumbotron">
    <div class="container">
        <div class="page-header">
            <h1>Cutomer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Shipping Address:</h3>

        <div class="form-group">
            <label for="shippingAddresshouseNo">House No.</label>
            <form:input path="cart.customer.shippingAddress.houseNo" id="shippingAddresshouseNo" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingAddressstreetNo">Street No.</label>
            <form:input path="cart.customer.shippingAddress.streetNo" id="shippingAddressstreetNo" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingAddresslocality">Locality</label>
            <form:input path="cart.customer.shippingAddress.locality" id="shippingAddresslocality" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingAddresslandmark">Land Mark</label>
            <form:input path="cart.customer.shippingAddress.landmark" id="shippingAddresslandmark" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingAddressprovince">Province</label>
            <form:input path="cart.customer.shippingAddress.province" id="shippingAddressprovince" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="shippingAddresscountry">Country</label>
            <form:input path="cart.customer.shippingAddress.country" id="shippingAddresscountry" class="form-Control" />
        </div>
        
        
        <div class="form-group">
            <label for="shippingAddresszipcode">Zipcode</label>
            <form:input path="cart.customer.shippingAddress.zipcode" id="shippingAddresszipcode" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <button class="btn btn-default" name="_eventId_backToCollectCustomerInfo">Back</button>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_shippingDetailCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>