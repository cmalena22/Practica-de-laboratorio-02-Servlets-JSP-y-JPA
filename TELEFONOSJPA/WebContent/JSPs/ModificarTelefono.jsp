<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modificar Telefono</title>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
	integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
	integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
	crossorigin="anonymous"></script>
<script type="text/javascript" src="../css/Validar Formularios.js" ></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Bienvenido</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="/PracticaJSPYJEE/ModificarTelefonoServlet?accion=Listar">Listar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/ModificarTelefonoServlet?accion=Registrar">Registrar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/ModificarTelefonoServlet?accion=Eliminar">Eliminar
						Telefono</a></li>

			</ul>
			<div class="dropdown">
				<button style="border: none;"
					class="btn btn-outline-dark dropdown-toggle" type="button"
					id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">${usuario}</button>

				<div class="dropdown-menu text-center"
					aria-labelledby="dropdownMenuButton">
					<img alt="" src="../imagenes/login.png" height="100" width="100"
						align="center"> <a class="dropdown-item" href="#">${name}</a>
					<a class="dropdown-item" href="#">${apellido}</a> <a
						class="dropdown-item" href="#">${usuario}</a> <a
						class="dropdown-item" href="#">${nombre}</a>
					<div class="dropdown-divider"></div>
					<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">

						<input type="submit" id="crear" value="Salir" name="accion" />
					</form>
				</div>
			</div>
	</nav>
	<br>
	<div class="container col-lg-3">
	<form method="POST" action="/PracticaJSPYJEE/ModificarTelefonoServlet"
		role="form">
<h1>Formulario</h1>
		<label for="numero">Id:(*)</label> <input type="text" id="id"
			name="id" placeholder="Ingrese el numero telefono ..."
			class="form-control" onkeypress="return validarNumeroo(event, this)"/>
			 <br> <label for="numero">Numero:(*)</label>
		<input type="text" id="numerom" name="numerom" minlength="9"
			maxlength="10" placeholder="Ingrese el numero telefono ..."
			class="form-control"  onkeypress="return validarNumeroo(event, this)" /> 
			<br> 
			<a>${telefono}</a> <label
			for="tipo">Tipo:(*)</label> <input type="text" id="tipom"
			name="tipom" placeholder="Ingrese tipo de telefono ..."
			class="form-control" required="required" onkeyup="return validarLetras(this)" /> 
			<br> <label for="operadora">Operadora:(*)</label>
		<input type="text" id="operadoram" name="operadoram"
			placeholder="Ingrese la operadora ..." class="form-control" required="required" onkeyup="return validarLetras(this)" /> <br>
		<input type="submit" id="modificar" name="accion" value="Modificar"
			class="btn btn-default" />

	</form>
 </div>
</body>
</html>