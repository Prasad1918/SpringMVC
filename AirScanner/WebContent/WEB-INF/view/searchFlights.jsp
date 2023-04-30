<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>AirScanner</title> 

<script type="text/javascript" src="${pageContext.request.contextPath}/js/datatable.jquery.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/datatable.min.js"></script>

<link
	href="https://cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css"
	rel="stylesheet" type="text/css">

<link rel="stylesheet" href="<c:url value='/resources/css/custom.css'/>"
	type="text/css" media="all">


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.8.1/css/bootstrap-slider.css" />



<link rel="stylesheet"
	href="<c:url value='/resources/css/newstyle.css'/>" type="text/css"
	media="all">



<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="<c:url value='/resources/css/jquery-ui.css'/>" type="text/css"
	media="all">
	
	
	
<link rel="stylesheet"
	href="<c:url value='/resources/css/datatable.min.css'/>" type="text/css"
	media="all">
	
		
	
<link rel="stylesheet"
	href="<c:url value='/resources/css/datatable-bootstrap.min.css'/>" type="text/css"
	media="all">
	
	
	
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




 <script
	src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script> 
	
	



<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-slider/9.8.1/bootstrap-slider.js"></script>
	<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script>




		$(document).ready(function() {
			

//	$('#flightDetails').DataTable();
		
		var r=$("#ex2").bootstrapSlider();
		 
		 $("#ex2").on("slide", function(slideEvt) {
			
				$("#price").text(slideEvt.value);
			}); 
			
		});
	</script>
<style>
.darkgrey {
	color: #ccd1d1;
	/* border-color: #ccd1d1;
	background-color: #ccd1d1;*/
	width: 100%;
}

.departborder {
	border: 5px solid rgb(232, 231, 228);
	background-color: white;
}

.departborder:hover {
	cursor: pointer;
}

/*.backgroundGrey {
	background-color: rgb(232, 231, 228);
	border-radius: 5px;
	border: 5px solid white;
}*/

/* The switch - the box around the slider */
.switch {
	position: relative;
	display: inline-block;
	width: 60px;
	height: 34px;
}

/* Hide default HTML checkbox */
.switch input {
	display: none;
}

/* The slider */
.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 26px;
	width: 26px;
	left: 4px;
	bottom: 4px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #2196F3;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}

/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}
</style>



</head>
<body style="margin-left: 20px">

	<jsp:include page="header2.jsp"></jsp:include>
	<br>
	<br>
	<%--<div align="left" style="font-size: 20px; margin-left: 20px">Welcome
		${userName} &nbsp;&nbsp;&nbsp;</div>

--%>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4>Search Flights</h4>
					</div>
					<div class="panel-body">

	<form:form method="POST" action="searchFlights">
		<!-- SEARCH -->
<div class="row marginbottom-50">

			<div class=" container col-sm-12 " style="margin-left:50px;">
				<br> <br> <br>
		

						<h3 class="red" id="msg2"></h3>

						<div class=" form-group col-sm-3" >
							<form:label path="source" class="control-label fontstyle">Origin<span
									class="red">*</span>
							</form:label>
							<br>
							<!--<form:input path="source"  class="form-control" />-->
							<form:select id="olist" path="source" class="form-control" required="true" title="Select source">
								<!-- <option>Chennai</option>
								<option>Delhi</option> -->
								 <form:option label="--Select  origin--" value=""/>
                                 <form:options items="${sourceList}"/> 
							</form:select>

							<br>
							<form:errors path="source" />
							<br>
						</div>


						<div class=" form-group col-sm-3">
							<form:label path="destination" class="control-label fontstyle">Destination<span
									class="red">*</span>
							</form:label>
							<br>
							<!--<form:input path="destination" class="form-control" />-->
							<form:select id="dlist" path="destination" class="form-control" required="true" title="Select destination">
								<!-- <option>Pune</option>
								<option>Bangalore</option> -->
								<form:option label="--Select  destination--" value=""/>
                                <form:options items="${destinationList}"/> 
							</form:select>
							<br>
							<form:errors path="destination" />
							<br>
						</div>


						<div class="form-group col-sm-3">
							<form:label path="journeyDate" class="control-label fontstyle">Journey Date<span
									class="red">*</span>
							</form:label>
							<br>
							<form:input type="text" id="datepicker" path="journeyDate"
								class="form-control" required="true" title="Journey date is mandatory" />
							<br>
							<form:errors path="journeyDate" />
							<br>
						</div>




						<div class="col-sm-3 pull-right" style="margin-top :3px">
							<br>
							<button type="submit" id="searchbtn"
								class="btn btn-primary fontstyle">Search Flights</button>
							<br>
						</div>

</div>
</div>
	</form:form>
	<div class="col-md-12 text-center">
            <div class="text-center text-danger">${message}</div>  
            </div>
					

<%--	<c:if test="${size <=0}">


		<div class="text-center">
			<h2>Sorry !!! There are no flights available for the selected
				Source and Destination...</h2>
		</div>
	</c:if> --%>


	<c:if test="${size > 0}">
		<div class="row marginbottom-150">

			<form:form method="POST" >
				<%!Random randomValue = new Random();%>

		<!-- for filter and results -->
		
			<div class="col-md-2  backgroundGrey  " style="margin-left : 15px">
					
				<div class="col-xs-12 padding-3 margintop-10">Departure from</div>
				<div class="col-xs-6 departborder margintop-10" id="dep1">Before 12:00hrs</div>
				<div class="col-xs-6 departborder margintop-10" id="dep2">After 12:00hrs</div>
				<div class="col-xs-12"><hr class="darkgrey"/></div>
			
				<div class="col-xs-12 padding-3 margintop-10">Airlines</div>
				<div class="col-xs-12 departborder margintop-10 padding-3">
					<div class="col-xs-6 text-left">WingMeIn</div>
					<div class="col-xs-offset-3 col-xs-3 padding-3"><input type="checkbox" id="air1" class="chk" name="airlines"/></div>
				</div>
				<div class="col-xs-12 departborder margintop-10 padding-3">
					<div class="col-xs-8 text-left">Aviate </div>
					<div class="col-xs-offset-1 col-xs-3 padding-3"><input type="checkbox" id="air2" class="chk" name="airlines"/></div>
				</div>						
				<div class="col-xs-12 departborder margintop-10 padding-3">
					<div class="col-xs-6 text-left">FlyWithMe</div>
					<div class="col-xs-offset-3 col-xs-3 padding-3"><input type="checkbox" id="air3" class="chk" name="airlines"/></div>
				</div>
				<div class="col-xs-12"><hr class="darkgrey"/></div>	
				
				<div class="col-xs-12 padding-3 margintop-10">Price Range</div>
				<div class="col-xs-12 margintop-10 marginbottom-10">
					<div class="row">
						<div class="col-xs-6 text-left" id="min1">
						</div>
						<div class="col-xs-6 text-right" id="max1"></div>
					</div>
					<div class="row">
					<div class="padding-15">
						<input id="ex2" type="text" class="span2" value="" data-slider-min="2000" data-slider-max="15000" data-slider-value="[2000,15000]" />
					
					</div></div>
				</div>					
				
			</div>
			<div class="col-md-9  backgroundGrey " style="margin-left : 30px">
			<br>
			
			
						<table id="flightDetails1" class="display table  table-striped"
							style="width: 100%" hidden="hidden">

							<thead>
								<tr>
									<th style="text-align: center"><b>Airline</b></th>
									<th style="text-align: center"><b>Flight Id</b></th>
									<th style="text-align: center"><b>From </b></th>
									<th style="text-align: center"><b>To </b></th>
									<th style="text-align: center"><b>Departure Date</b></th>
									<th style="text-align: center"><b>Departure
											Time(HH:MM)</b></th>
									<th style="text-align: center"><b>Available Seats</b></th>
									<th style="text-align: center"><b>Fare</b></th>
									<th style="text-align: center"><b>Book</b></th>
								</tr>
							</thead>
							<tbody>
						</tbody>
						</table>
			<br>
		
			
					    <table id="flightDetails" class="display table  table-striped"
							style="width: 200%">

							<thead>
								<tr>
									<th style="text-align: center"><b>Airline</b></th>
									<th style="text-align: center"><b>Flight ID</b></th>
									<th style="text-align: center"><b>From </b></th>
									<th style="text-align: center"><b>To </b></th>
									<th style="text-align: center"><b>Departure Date</b></th>
									<th style="text-align: center"><b>Departure
											Time(HH:MM)</b></th>
									<th style="text-align: center"><b>Available Seats</b></th>
									<th style="text-align: center"><b>Fare</b></th>
									<th style="text-align: center"><b>Book</b></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="flight" items="${availableFlights}">
									
									&nbsp;&nbsp;&nbsp;&nbsp;
									<tr>

										<td><form:label style="font-weight:300" path="airlines">&nbsp;&nbsp;${flight.airlines}</form:label></td>
										<td><form:label style="font-weight:300" path="flightId">&nbsp;&nbsp;${flight.flightId}</form:label></td>
										<td><form:label style="font-weight:300" path="source">&nbsp;&nbsp;${flight.source}</form:label></td>
										<td><form:label style="font-weight:300" path="destination">&nbsp;&nbsp;${flight.destination}</form:label></td>
										<td><form:label style="font-weight:300" path="flightAvailableDate">&nbsp;&nbsp;${flight.flightAvailableDate}</form:label></td>
									<%--	<%
									Calendar data = Calendar.getInstance();
								%>
										<%
									data.add(Calendar.HOUR_OF_DAY, 4);
								%>

										<td><form:label path="departureTime">&nbsp;&nbsp;&nbsp;&nbsp;11:00</form:label></td>--%>
										<td><form:label style="font-weight:300" path="departureTime">&nbsp;&nbsp;&nbsp;&nbsp;${flight.departureTime}</form:label></td>
										<td><form:label style="font-weight:300" path="seatCount">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${flight.seatCount}</form:label></td>
										<td><form:label style="font-weight:300" path="fare">${flight.fare}</form:label></td>
										<td>Book <%-- <a
											href="Proceed.htm?fare=${flight.fare}&from=${flight.source}&to=${flight.destination}&jdate=${flight.flightAvailableDate}&time=<%=(new SimpleDateFormat("HH:mm:ss")).format(data.getTime())%>&seat=${flight.seatCount}&user=${userName}&fid=${flight.flightId}">Book</a></td> --%>
											
									<!--	<a
									href="bookFlight?flightid=${flight.flightId}">Book</a></td>-->





									</tr>
								</c:forEach>
							</tbody>
						</table>
				
			</div>
			</form:form>
			</div>


	</c:if>
				</div>
</div>

	<!-- FOOTER -->
	<%-- <footer id="footer">
		<div class="container">


			<div class="row">
				<div class="col-sm-6 col-sm-push-6 footer-social-icons padding-15">
					<span>Follow us:</span> <a href=""><img
						src="<c:url value='/resources/images/fb.png'/>"></img></a> <a href=""><img
						src="<c:url value='/resources/images/gp.png'/>"></img></a> <a href=""><img
						src="<c:url value='/resources/images/yt.png'/>"></img></a> <a href=""><img
						src="<c:url value='/resources/images/t.png'/>"></img></a>
				</div>
				<!-- /SOCIAL ICONS -->
				<div class="col-sm-6 col-sm-pull-6 padding-15">
					<p>
						&copy; 2017 <a href="${pageContext.servletContext.contextPath}">InfyGo</a>. All Rights Reserved.
					</p>
				</div>
			</div>

		</div>
	</footer> --%>
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- /FOOTER -->

	<script type="text/javascript">
  $( document ).ready(function() {

   $("#min1").html("Rs.2000");
	 $("#max1").html("Rs.7000");

	 var r=$("#ex2").bootstrapSlider();

	 $("#ex2").on("slide", function(slideEvt) {
			$("#price").text(slideEvt.value);
			var range=slideEvt.value;			
			var min="Rs."+range[0];
			var max="Rs."+range[1];
		$("#min1").html(min);
		$("#max1").html(max);
		
		
		 var airlinesarr=[];
		  <c:forEach var="listValue" items="${availableFlights}">
		  var flightdict={};
		  var flid='${listValue.flightId}';
		  flightdict.airlines='${listValue.airlines}';
		  flightdict.flightid='${listValue.flightId}';
		  flightdict.source='${listValue.source}';
		  flightdict.destination='${listValue.destination}';
		  flightdict.flightAvailableDate='${listValue.flightAvailableDate}';
		  flightdict.departureTime='${listValue.departureTime}';
		  flightdict.seatcount='${listValue.seatCount}';
		  flightdict.fare='${listValue.fare}';
		  flightdict.book='<a href="bookFlight?flightid='+flid+'">Book</a>';
		  airlinesarr.push(flightdict);
		      </c:forEach>
		      
		      
			console.log(airlinesarr);
			
			 
			
		 
		 	var childarray=[];
			 $.each(airlinesarr, function( index, value ) {
				  	if((value.fare>=range[0]) && (value.fare<=range[1]))
				  		{childarray.push(value);}
				});
			console.log("child array price");
			console.log(childarray);
			 $('#flightDetails').hide();
			 $('#flightDetails1').show();
			 console.log(childarray);
			 var datatable = new DataTable(document.querySelector('#flightDetails1'), {sort: [true, true, true, true,true,true,true],
				    data:childarray
				});
			
			
		 	
		});
	  
	 $("#dep1").on("click", function() {
		 
		 
		 alert('in dep');
		 var airlinesarr=[];
		  <c:forEach var="listValue" items="${availableFlights}">
		  var flightdict={};
		  var flid='${listValue.flightId}';
		  flightdict.airlines='${listValue.airlines}';
		  flightdict.flightid='${listValue.flightId}';
		  flightdict.source='${listValue.source}';
		  flightdict.destination='${listValue.destination}';
		  flightdict.flightAvailableDate='${listValue.flightAvailableDate}';
		  flightdict.departureTime='${listValue.departureTime}';
		  flightdict.seatcount='${listValue.seatCount}';
		  flightdict.fare='${listValue.fare}';
		  flightdict.book='<a href="bookFlight?flightid='+flid+'">Book</a>';
		  airlinesarr.push(flightdict);
		      </c:forEach>
		      
		      
			console.log(airlinesarr);
			 
		 	
		 	var childarray=[];
			 $.each(airlinesarr, function( index, value ) {
				 var deptime=value.departureTime;
				 var res = deptime.split(":");
				 console.log(res);
				  	if(res[0]<12){
				  		childarray.push(value);
				  	}
				  		
				});
			 $('#flightDetails').hide();
			 $('#flightDetails1').show();
			 console.log(childarray);
			 var datatable = new DataTable(document.querySelector('#flightDetails1'), {    sort: [true, true, true, true,true,true,true],
				    data:childarray
				});
			
			});

	 $("#dep2").on("click", function() {
		 alert('in dep2');
		 var airlinesarr=[];
		  <c:forEach var="listValue" items="${availableFlights}">
		  var flightdict={};
		  var flid='${listValue.flightId}';
		  flightdict.airlines='${listValue.airlines}';
		  flightdict.flightid='${listValue.flightId}';
		  flightdict.source='${listValue.source}';
		  flightdict.destination='${listValue.destination}';
		  flightdict.flightAvailableDate='${listValue.flightAvailableDate}';
		  flightdict.departureTime='${listValue.departureTime}';
		  flightdict.seatcount='${listValue.seatCount}';
		  flightdict.fare='${listValue.fare}';
		  flightdict.book='<a href="bookFlight?flightid='+flid+'">Book</a>';
		  airlinesarr.push(flightdict);
		      </c:forEach>
		      
		      
			console.log(airlinesarr);
			 
		 	
		 	var childarray=[];
			 $.each(airlinesarr, function( index, value ) {
				 var deptime=value.departureTime;
				 var res = deptime.split(":");
				 console.log(res);
				  	if(res[0]>=12){
				  		childarray.push(value);
				  	}
				  		
				});
			 $('#flightDetails').hide();
			 $('#flightDetails1').show();
			 console.log(childarray);
			 var datatable = new DataTable(document.querySelector('#flightDetails1'), {    sort: [true, true, true, true,true,true,true],
				    data:childarray
				});
			
			});
	 
	 $(".chk").on("click", function(){
		 //adding flight details retrieved from the database to the dictionalry arry just like it is stored in dummydata
		function create(htmlStr) {
    var frag = document.createDocumentFragment(),
        temp = document.createElement('a');
    temp.innerHTML = htmlStr;
    while (temp.firstChild) {
        frag.appendChild(temp.firstChild);
    }
    return frag;
}
		 var airlinesarr=[];
		  <c:forEach var="listValue" items="${availableFlights}">
		  var flightdict={};
		  var flid='${listValue.flightId}';
		  flightdict.airlines='${listValue.airlines}';
		  flightdict.flightid='${listValue.flightId}';
		  flightdict.source='${listValue.source}';
		  flightdict.destination='${listValue.destination}';
		  flightdict.flightAvailableDate='${listValue.flightAvailableDate}';
		  flightdict.departureTime='${listValue.departureTime}';
		  flightdict.seatcount='${listValue.seatCount}';
		  flightdict.fare='${listValue.fare}';
		  //alert(flid);
		 // alert('<a href="bookFlight?flightid='+'${listValue.flightId}'+'">Book</a>');
		  flightdict.book='<a href="bookFlight?flightid='+flid+'">Book</a>';

		  airlinesarr.push(flightdict);
		      </c:forEach>
		      
		 var $airlines = $('input[name=airlines]:checked');

		 var localarray=[];
		
			 console.log("all flights:");
		  console.log(airlinesarr); //data from database
			
		 if(($airlines.length==0) || ($airlines.length==3))
		 { localarray=airlinesarr;}
		else
			{
			
			
			
				if($('#air1').is(':checked'))
					{
						$.each(airlinesarr, function( index, value ) {
						  	if(value.airlines=="WingMeIn"){
						  		localarray.push(value);
						  	}
						  			
						});
					}
					  if($('#air2').is(':checked'))
						{
							$.each(airlinesarr, function( index, value ) {
							  	if(value.airlines=="Aviate")
							  			localarray.push(value);
							});
						}
					  if($('#air3').is(':checked'))
						{
							$.each(airlinesarr, function( index, value ) {
							  	if(value.airlines=="FlyWithMe")
							  			localarray.push(value);
							});
						}
					 
					  console.log(localarray);
				
			}
	
		 $('#flightDetails').hide();
		 $('#flightDetails1').show();
	
		 
		// console.log(localarray) //This retreives the flight details from the database correctly
		// alert($('#air1').is(':checked'));
		 var datatable = new DataTable(document.querySelector('#flightDetails1'), {    sort: [true, true, true, true,true,true,true],
			    data:localarray
			});
		 
	 });
			
			
			
			
			

  
  });
  </script>


</body>

</html>
