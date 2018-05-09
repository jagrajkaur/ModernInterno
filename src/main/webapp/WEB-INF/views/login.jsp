
<div class="container" style="background: url('./resources/images/login.jpg'); width: 100%; height: 120%; ">
<%@ include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper container-fluid">
    <div class="container" style="width: 50%">
        <div id="login-box" style="border: 1px solid #fff; padding:50px 40px; margin-top: 13vh; 
        -webkit-box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);
        -moz-box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);
        box-shadow: -1px 4px 27px 11px rgba(0,0,0,0.75);"">
            <h2 style="color:captiontext;">Login with Username and Password</h2>

            <c:if test="${not empty msg}">
                <h4><div class="msg">${msg}</div></h4>
            </c:if>
			
            <form class="form-container" name="loginForm" action="<c:url value="/j_spring_security_check" />" method="post">

                <c:if test="${not empty error}">
                    <h4><div class="error" style="color:red;">${error}</div></h4>
                </c:if>

                <div class="form-group">
                    <label for="username">User Name: </label>
                    <input type="text" id="username" name="username" class="form-control" placeholder="Enter Your Name" />
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="form-control" placeholder="Enter Your Password" />
                </div>
				<div class="checkbox">
					<label> <input type="checkbox"> Remember me</label>
				</div>
				<input type="submit" value="Submit" class="btn btn-default btn-success">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
            </form>
        </div>
    </div>
</div>

<br><br><br><br><br><br>
<%@ include file="/WEB-INF/views/template/footer.jsp" %>
<br><br>
</div>
