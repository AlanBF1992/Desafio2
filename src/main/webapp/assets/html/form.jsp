		<h1>Información de Reserva Habitación</h1>
	
		<hr>
		
		<form method="post" action="procesa">
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