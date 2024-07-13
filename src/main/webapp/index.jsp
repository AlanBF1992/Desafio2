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

	<section class="margin20p pt-5 mb-5">
		<form method="post" action="procesa">
		<h1>Habitaciones disponibles (<c:out value="${habitaciones.size()}"></c:out>)</h1>
		<hr>
		<!-- Hacer un onHover o onClick si me da la gana luego -->
			<div class="row g-3 mb-5">
				<c:forEach var="habitacion" items="${habitaciones}">
					<div class="col-12 col-sm-6 col-xl-4 col-xxl-3">
					  <div class="card">
					    <img src=<c:out value="${habitacion.getImagen()}"></c:out> class="card-img-top" alt="">
					    <div class="card-body">
							<h5 class="card-title text-center fw-bold"><c:out value="${habitacion.getNombre()}"></c:out></h5>
							<p class="card-text text-center"><c:out value="${habitacion.getDescripcion()}"></c:out></p>
							<p class="card-text text-center">CL$ <c:out value="${habitacion.getPrecio()}"></c:out></p>
							<div class="form-check d-flex justify-content-center align-items-center">
								<input class="form-check-input" type="radio" id="idhabitacion" name="idhabitacion" value=<c:out value="${habitacion.getId()}"></c:out> required>
							</div>
					    </div>
					  </div>
				  </div>
				</c:forEach>
			</div>
	
	
			<h1>Información de Reserva Habitación</h1>
		
			<hr>
		
			<div class="row mb-3">
				<div class="col-md-6">
					<label for="nombre" class="form-label">Nombre</label>
				   	<input type="text" class="form-control" id="nombre" name="nombre" aria-describedby="emailHelp" required>
				</div>
				<div class="col-md-6">
					<label for="apellido" class="form-label">Apellido</label>
					<input type="text" class="form-control" id="apellido" name="apellido" aria-describedby="emailHelp" required>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6">
					<label for="email" class="form-label">Email</label>
			   		<input type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp" required>
				</div>
				<div class="col-md-2">
					<label for="medio_pago" class="form-label">Medio de Pago</label>
					<select class="form-select" id="medio_pago" name="medio_pago" required>
					  <option selected disabled>Seleccionar</option>
					  <option value="Contado">Contado</option>
					  <option value="Débito">Débito</option>
					  <option value="Crédito">Crédito</option>		
					</select>
				</div>
				<div class="col-md-2">
					<label for="dias" class="form-label">Días</label>
					<select class="form-select" id="dias" name="dias" required>
					  <option selected disabled>Seleccionar</option>
					  <option value="1">1 (día)</option>
					  <option value="2">2 (días)</option>
					  <option value="3">3 (días)</option>		
					</select>
				</div>
				<div class="col-md-2">
					<label for="fecha_entrada" class="form-label">Fecha Entrada</label>
					<input type="date" class="form-control" id="fecha_entrada" name="fecha_entrada" required>
				</div>
			</div>

			<hr>
			
			<button type="submit" class="btn btn-primary">Enviar solicitud de compra</button>
		</form>
	</section>
</main>
<!-- FOOTER -->
<jsp:include page="./assets/html/footer.jsp"></jsp:include>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>