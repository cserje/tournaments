<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<link rel="stylesheet"href="<spring:url value="/resources/css/jquery.datetimepicker.css"/>" type="text/css" />
	<script src="http://nagyagi.eu/wp-content/uploads/2018/03/jquery.datetimepicker.full.min.js"></script>
	<script src="http://nagyagi.eu/wp-content/uploads/2018/03/jquery.datetimepicker.full.js"></script>
</head>
<body>

	<jsp:include page="../views/fragments/header.jsp"></jsp:include>

	<div class="container">
		<div class="row">
			<form class="col-md-8 col-md-offset-2" accept-charset="utf-8"  method="post">
 <div class="form-group">
  <label for="team1">Kérem válassza ki az 1. csapatot!</label>
  <select class="form-control" id="team1" name="team1">
<c:forEach items="${teams}" var="team">
    <option value="${team.id}">
        ${team.name}
    </option>
  </c:forEach>
  </select>
</div> 
 <div class="form-group">
  <label for="team2">Kérem válassza ki a 2. csapatot!</label>
  <select class="form-control" id="team2" name="team2">
 <c:forEach items="${teams}" var="team">
    <option value="${team.id}">
        ${team.name}
    </option>
  </c:forEach>
  </select>
</div> 
				
				 <div class="form-group">
               <label for="datetimepicker">Kérem válassza ki a meccs kezdetének időpontját!</label>
                    <input id="datetimepicker" class="form-control" name="start"/>
                    

              
            </div>
           
				       
				<button type="submit" class="btn btn-default">Létrehozás</button>
			</form>

		</div>
	</div>
	<script>
                $('#datetimepicker').datetimepicker();
        </script>
</body>
</html>