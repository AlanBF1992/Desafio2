<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<jsp:include page="./assets/html/head.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css" href="./assets/css/styles.css"/>
</head>
<body>
<header>
	<jsp:include page="./assets/html/header.jsp"></jsp:include>
</header>

<main>
	<section>
		<div class="d-flex justify-content-center align-items-center bg-dark flex-column" style="min-height: 150px;">
			<h1 class="text-light mb-0">Reservas Hotel Sheraton Miramar</h1>
			<h5 class="text-secondary mb-0">Habitaciones disponibles</h5>
		</div>
	</section>

	<section class="margin10p my-5">
	
		<h1 class="text-center"><c:out value="${habitacionName}"></c:out></h1>
		
		<hr>
	
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>Item</th>
					<th>Valor</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="dato" items="${datos}" varStatus="loop">
					<tr>
						<th><c:out value="${loop.index}"></c:out></th>
						<td><c:out value="${dato.key}"></c:out></td>
						<td><c:out value="${dato.value}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</section>
</main>
<!-- FOOTER -->
<jsp:include page="./assets/html/footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>