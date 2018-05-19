<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tornák</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
	<link rel="stylesheet" href="<spring:url value="/resources/css/home.css"/>" type="text/css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" type="text/css"/>
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css" type="text/css"/>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
	
	<style>
button {margin:5px;}
</style>

</head>
<body>
	
	<jsp:include page="../views/fragments/header.jsp"></jsp:include>			

	<div class="container">
		
		<h2>Tornák</h2>
		<button type="button" class="btn" style="background:#129c30; color:white" onclick="window.location.href='<spring:url value="/tournament/${tournamentId}/addMatch"/>'">Új mérkőzés felvétele</button>
		<p>
		<table id="example" class="table table-striped table-bordered" style="width:100%">
			<thead>
			<tr>
					<th>Id</th><th>1. csapat</th><th>2. csapat</th><th>Kezdés</th><th>Műveletek</th>
				</tr>
			</thead>

			<tbody>
				
				<c:forEach items="${matches}" var="match">
					<tr>
					    <td>${match.id}</td>
						<td>${match.team1.name}</td>
						<td>${match.team2.name}</td>
						<td>${match.start}
						</td>
						<td>
						<button onclick="window.location.href='<spring:url value="/tournament/delete/"/>'" type="button" class="btn" style="background:#dd2c00; color:white;">Törlés</button>
					
						<button type="button" class="btn" style="background:#ff6600; color:white;" onclick="window.location.href='<spring:url value="/tournament/modifyTournament"/>'">Módosítás</button></td>
					</tr>	
				</c:forEach>
			</tbody>
		</table>
		
	</div>
	<script type="text/javascript">
	$(document).ready(function() {
	    $('#example').DataTable( {
	        "language": {
	            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Hungarian.json"
	        }
	    } );
	} );</script>
	
</body>
</html>