<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer</h1>


            <p class="lead">Customer Details:</p>
        </div>

        <form:form commandName="order" class="form-horizontal">

        <h3>Basic Info:</h3>

        <div class="form-group">
            <label for="name">Name</label>
            <form:input path="cart.customer.name" id="name" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="emailId">Email Id</label>
            <form:input path="cart.customer.emailId" id="emailId" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="phoneNo">Phone No.</label>
            <form:input path="cart.customer.phoneNo" id="phoneNo" class="form-Control" />
        </div>

        <br/>

        <h3>Billing Address:</h3>

		<div class="form-group">
            <label for="billingAddresshouseNo">House No.</label>
            <form:input path="cart.customer.billingAddress.houseNo" id="billingAddresshouseNo" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddressstreetNo">Street No.</label>
            <form:input path="cart.customer.billingAddress.streetNo" id="billingAddressstreetNo" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddresslocality">Locality</label>
            <form:input path="cart.customer.billingAddress.locality" id="billingAddresslocality" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddresslandmark">Land Mark</label>
            <form:input path="cart.customer.billingAddress.landmark" id="billingAddresslandmark" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddressprovince">Province</label>
            <form:input path="cart.customer.billingAddress.province" id="billingAddressprovince" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddresscountry">Country</label>
            <form:input path="cart.customer.billingAddress.country" id="billingAddresscountry" class="form-Control" />
        </div>

        <div class="form-group">
            <label for="billingAddresszipcode">Zipcode</label>
            <form:input path="cart.customer.billingAddress.zipcode" id="billingAddresszipcode" class="form-Control" />
        </div>

        <input type="hidden" name="_flowExecutionKey" />

        <br/><br/>

        <input type="submit" value="Next" class="btn btn-default" name="_eventId_customerInfoCollected" />

        <button class="btn btn-default" name="_eventId_cancel">Cancel</button>

        </form:form>

<%@ include file="/WEB-INF/views/template/footer.jsp" %>