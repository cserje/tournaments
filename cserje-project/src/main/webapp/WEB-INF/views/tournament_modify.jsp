<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Project Manager</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<spring:url value="/resources/css/home.css"/>" type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.3.min.js"></script>

<!-- Include Date Range Picker -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />

<script>
	/*$(document).ready(
			function() {
				var date_input = $('input[name="date"]'); //our date input has the name "date"
				var container = $('.bootstrap-iso form').length > 0 ? $(
						'.bootstrap-iso form').parent() : "body";
				date_input.datepicker({
					format : 'dd/mm/yyyy',
					container : container,
					todayHighlight : true,
					autoclose : true,
				})
			})*/
			
        $(document).ready(function() {
          $("#date").datepicker({
              changeMonth: true, 
              changeYear: true,
              dateFormat: 'mm-dd-yyyy'
              });
        });
</script>
</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<form class="col-md-8 col-md-offset-2" method="post" >
				<div class="form-group">
					<label for="name_row">Név</label> <input type="text"
						id="name_row" class="form-control" name="name" value="${tournament.name}" />
				</div>
				
								<div class="form-group">
					<label for="description_row">Leírás</label>
					<textarea class="form-control" rows="3" name="description" id="description_row" >${tournament.description}</textarea>
				</div>

				
				<div class="form-group ">
				<label for="date">Dátum</label>
				<input class="form-control" id="date" name="date" value="${tournament.dateString}"/>
				</div>


				<button type="submit" class="btn btn-default" >Mentés</button>

			</form>

		</div>
	</div>
</body>
</html>