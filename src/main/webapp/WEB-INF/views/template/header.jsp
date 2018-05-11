<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>Modern Intrno Design Interior</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
</head>
<body>

	<header>
		<div class="navbar">
			<nav class="navbar navbar-default navbar-static-top">
				<div class="container-fluid">

					<!-- LOGO -->
					<div>
						<a href="#"><img class="img-fluid" style="margin-top: 3px;"
							src="<c:url value="/resources/images/Interiors.png" />"
							alt="Your Logo" height="48px" width="130px"></a>
						<p
							style="margin-top: 20px; color: gray; float: right; font-style: italic; font-size: large; letter-spacing: 2px;">Design
							is a Journey of Discovery..!</p>
					</div>
					<hr>

					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target=#collapse-example
							 aria-expanded="false" />
						<span class="sr-only">Toggle navigation</span> 
						<span class="icon-bar"></span>
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span> 
						<span class="icon-bar"></span>
						</button>
					</div>

					<div class="navbar-collapse collapse navbar-responsive-collapse" id="collapse-example">
						<ul class="nav navbar-nav">
							<li class="active glyp"><a href="<c:url value="/" />"><span
									class="glyphicon glyphicon-home"></span>Home</a></li>
							<li><a href="<c:url value="allProducts" />"><span
									class="glyphicon glyphicon-th"></span>All Products</a></li>
							<li><a href="<c:url value="admin/addProduct" />">Add Product</a></li>
							<li><a href="<c:url value="about" />">About Us</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">

							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<li><a>Welcome:
										${pageContext.request.userPrincipal.name}</a></li>
								<li><a href="<c:url value="/j_spring_security_logout"/>"><span
										class="glyphicon glyphicon-off"></span>Logout</a></li>

								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a href="<c:url value="/customer/cart"/>"><span
											class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
								</c:if>

								<c:if
									test="${pageContext.request.userPrincipal.name == 'admin'}">
									<li><a href="<c:url value="/admin"/>">Admin</a></li>
								</c:if>
							</c:if>

							<c:if test="${pageContext.request.userPrincipal.name == null}">
								<li><a href="<c:url value="/contactUs" />">Contact Us</a></li>
								<li><a href="<c:url value="/login"/>"><span
										class="glyphicon glyphicon-user"></span>Login</a></li>
								<li><a href="<c:url value="/registerCustomer"/>"><span
										class="glyphicon glyphicon-plus"></span>Sign Up</a></li>
							</c:if>
						</ul>
					</div>


				</div>
				<!-- end of container -->
			</nav>
			<!-- end nav -->
		</div>
		<!-- end navbar -->
	</header>


</body>
</html>