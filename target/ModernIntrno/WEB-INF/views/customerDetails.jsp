<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ include file="template/header.jsp"%>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Customer Details Page</h1>

            <p class="lead">This is the customer detail page.....!</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>UserName</th>
                <th>Enabled</th>
            </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.emailId}</td>
                    <td>${customer.phoneNo}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>


				<!-- footer -->
<%@ include file="template/footer.jsp" %>