<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Airline Reservation System</title>

<script src="validationScript.js"></script>
<!--  <script type="text/javascript" src="${pageContext.request.contextPath}/js/ValidationScript.js"></script>-->
<link rel="stylesheet" href="<c:url value='/resources/css/custom.css'/>"
	type="text/css" media="all">
<link rel="stylesheet"
	href="<c:url value='/resources/css/newstyle.css'/>" type="text/css"
	media="all">

<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
	<!-- HEADER -->
	<header id="header"> <nav
		class="navbar st-navbar navbar-fixed-top">

	<div class="container-fluid">
		<div class="navbar-header" style="margin-top: 15px">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#st-navbar-collapse">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>

			<a class="logo1" href="" style="text-align: center"> <img
				src="<c:url value='/resources/images/infygonew.PNG'/>" alt="">
			</a>
			<p style="text-align: center">
			<h6>JSP Servlets Application</h6>
			</p>
		</div>

		<div class="collapse navbar-collapse" id="st-navbar-collapse">
			<div class="">
				<ul class="nav navbar-nav nav-links">

					<li><a href="#header">Home</a></li>
					<li><a href="#about-us">About Us</a></li>
					<li><a href="#contact">Contact Us</a></li>
				</ul>

			</div>

		</div>
	</div>
	<!-- /.navbar-collapse --> </nav> </header>
	<!-- /HEADER -->

	<!-- SIGNUP -->

	<!-- SLIDER -->
	<section id="slider" class="margintop-10">
	<div id="home-carousel" class="carousel slide" data-ride="carousel">
		<div class="carousel-inner">
			<div class="item active"
				style="background-image: url(<c:url value='/resources/imgs/382266112.jpg'/>)">
				<br> <br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">Connecting flight</p>
						<p class="carousel-content  " style="color: white">Taking more
							than one flight to get to your final destination? At InfyGo, we
							make connecting flights much easier!</p>
					</div>
				</div>
			</div>
			<div class="item"
				style="background-image: url(<c:url value='/resources/imgs/586266182.jpg'/>)">
				<br> <br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">InfyGo Meals onboard</p>
						<p class="carousel-content " style="color: white">Tickle your
							taste buds and enjoy sumptuous meals onboard!</p>
					</div>
				</div>
			</div>

			<div class="item"
				style="background-image: url(<c:url value='/resources/imgs/346909778.jpg'/>)">
				<br> <br>
				<div class="container">
					<div class="col-sm-6">
						<p class="head " style="color: white">Hospitality</p>
						<p class="carousel-content " style="color: white">More
							convenience and comfort with our hospitality and services!</p>
					</div>
				</div>
			</div>


		</div>
		<ol class="carousel-indicators">
			<li data-target="#home-carousel" data-slide-to="0" class="active"></li>
			<li data-target="#home-carousel" data-slide-to="1"></li>
			<li data-target="#home-carousel" data-slide-to="2"></li>
		</ol>
	</div>
	<!--/-carousel--> </section>
	<!-- /SLIDER -->

	<!-- ABOUT US -->
	<div class="row marginbottom-150">
		<div class="container col-sm-offset-1 col-sm-5 col-left ">
			<h1 class="capital">
				<strong>About Us</strong>
			</h1>
			<span class="st-border"></span>
			<div class="about-us ">
				<br>
				<p>
					<b>Why InfyGo?<br></b> InfyGo is one of the leading player in online Air bookings in 
India which provides great offers like lowest airfares with exclusive discounts for regular customers with a hassel free online booking experience. InfyGo is user friendly and its easy to complete your flight booking with just a few clicks away!
						</p>
						<br>
						<p>
							<b>Book Flights with InfyGo<br></b>With InfyGO you get an ultimate online booking 
experience with premium customer service by providing dedicated helpline support 24/7 
with over 2 million delighted customers. InfyGo takes pride by enabling customer satisfaction!					</p>
						<br>
						<p>
							<b>Book Domestic Flights with InfyGo<br></b> InfyGo has a dominant position in the 
domestic flights sector by providing the cheapest fare and have a great experience by providing the tickets at lowest price.
				</p>
				</p>

			</div>
		</div>

		<!-- /ABOUT US -->

		<div class="container col-sm-5 col-right signup" style="width: 40%">

			<div class="panel panel-default">

				<div class="panel-heading">
					<h4 class="capital">Register</h4>

				</div>
				<div class="panel-body">
					<FORM name="form" method="POST" action="RegisterServlet"
						onsubmit="return validate()">

						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								User ID <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="text" name="uid" class="form-control" /> <br>

							</div>
							<br>
						</div>

						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								Password <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="password" name="password" class="form-control" />
								<br>

							</div>
							<br>
						</div>




						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								Name <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="text" name="name" class="form-control" /> <br>
							</div>
							<br>
						</div>



						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								City <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="text" name="city" class="form-control" /> <br>
							</div>
							<br>
						</div>

						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								E-mail <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="text" name="email" class="form-control" /> <br>
							</div>
							<br>

						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-4 text-right fontstyle">
								Phone <span style="color: red">*</span>
							</div>
							<div class="col-sm-6">
								<input type="text" name="phone" class="form-control"
									maxlength="10" /> <br>

							</div>
							<br>
						</div>
						<div class="row">
							<div
								class="form-group col-sm-offset-1 col-sm-3 text-right fontstyle">

							</div>
							<div class="col-sm-6">
								<input type="submit" class="btn btn-primary" value="Register" />
							</div>
							<div class="col-md-12 text-center">
								<div class="text-center text-danger">${message}</div>
							</div>
						</div>
						<br>
					</FORM>
				</div>
			</div>
		</div>
		<br> <br>
		<%@ include file="footer.jsp"%>
</body>
</html>