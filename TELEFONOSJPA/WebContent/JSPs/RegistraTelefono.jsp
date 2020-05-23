<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registrar Telefono</title>
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
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Listar">Listar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Modificar">Modificar
						Telefono</a></li>
				<li class="nav-item"><a class="nav-link"
					href="/PracticaJSPYJEE/InsertarTelefonoServlet?accion=Eliminar">Eliminar
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
	<h1>Formulario</h1>
	<form action="/PracticaJSPYJEE/InsertarTelefonoServlet" method="post"
		role="form">
		<div class="form-group">
		<label for="numero">Numero:</label>
		<input type="text" id="numero"	name="numero" minlength="9" maxlength="10" class="form-control" required="required"  onkeypress="return validarNumeroo(event, this)" /> <br> 
		<label
			for="tipo">Tipo:</label> 
		<input type="text" id="tipo" name="tipo" class="form-control" onkeyup="return validarLetras(this)" required="required" />
		<br> 
		<label for="operadora">Operadora:</label> 
		<input type="text" id="operadora" name="operadora" class="form-control" onkeyup="return validarLetras(this)" required="required"/> <br> 
		<input id="cedula" name="cedula" type="hidden" value="${nombre}"> <input
			type="submit" id="crear" value="Ingresar" name="accion" class="btn btn-default"/>
		
		</div>
		

	</form>
	
	</div>
</body>
</html>