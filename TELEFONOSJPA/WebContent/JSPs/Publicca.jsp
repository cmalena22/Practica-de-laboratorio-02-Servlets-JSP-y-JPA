<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guia telefonica</title>
<link href="/css/diseño.css">
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

</head>
<body>
	<header>
		<div class="container-fluid text-center"
			style="background-color: #2c3e50">
			<div style="color: white;">
				<br>
				<h1>Bienvenidos a la agenda Telefonica</h1>
				<br>

			</div>
		</div>

	</header>

	<div class="center-block">
		<nav class="navbar navbar-expand-lg navbar-light bg-light text-center">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">

					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Iniciar"
						style="color: black;">Iniciar Sesion</a></li>
					
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Insertar"
						style="color: black;">Registrar Usuario</a></li>
				</ul>
				<form class="form-inline my-2 my-lg-0"	action="/PracticaJSPYJEE/BuscarPorCedulaServlet" method="post">
					<input class="form-control mr-sm-2" type="search" placeholder="Cedula" name="buscar" aria-label="Search">
					<button class="btn btn-outline-success my-2 my-sm-0" type="submit"
						name="accion" value="Buscar">Buscar</button>
					<input id="cedula" name="cedula" type="hidden" value="${nombre}">
				</form>
			</div>
			</nav>
	</div>
	

	<div class="container">
		<section class="main row">
			<div class="form-group text-center col-md-8">
				<table class="table table-hover">
					<thead>
						<tr>

							<th>Numero</th>
							<th>Tipo</th>
							<th>Operadora</th>
							<th>Cedula</th>
							<th>Nombre</th>
							<th>Apellido</th>
							<th>Correo</th>
						</tr>
					</thead>
					<tbody style="align-content: center;">
						<c:forEach var="tel" items="${telefono}">
							<tr>

								<td>${tel.getNumero()}</td>
								<td>${tel.getTipo()}</td>
								<td>${tel.getOperadora()}</td>
								<td>${tel.getUsuario_cedula().getCedula()}</td>
								<td>${tel.getUsuario_cedula().getNombre()}</td>
								<td>${tel.getUsuario_cedula().getApellido()}</td>
								<td>${tel.getUsuario_cedula().getCorreo()}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="col-md-4" style="text-align: justify;">


				<aside>
					<p>Los directorios telefónicos eran, originalmente, libros o
						revistas brindados por las empresas telefónicas, ayuntamientos,
						etc., en los cuales figuran los números de los abonados en un área
						geográfica determinada. Disponen a su vez, de teléfonos de interés
						público, como policía, bomberos, hospitales, protección civil,
						atención al drogodependiente, etc. Actualmente, se distribuyen
						también en formato electrónico e Internet.</p>

				</aside>
			</div>

		</section>
		<div class="row">
		<div class="col-md-4">
		
		<br>
		<br>
		</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<blockquote>Más información Nuestra empresa Call EPc<br>
					Buscar Contactos 
					<br>
					 Informacion <br>
					 Paginas Amarillas <br>
					 Contactos
					 
				</blockquote>
			</div>
			<div class="col-md-4">
				<blockquote>
				Internet <br>
				Telefonía <br>
				Servicios Corporativos <br>
				Planes que NO se comercializan<br></blockquote>
				<a href="tel:0987129327">(593) Llamar</a>
				
			</div>
			<div class="col-md-4">
				<blockquote>
				<p> <strong>Lo que contiene una agenda telefonica</strong> </p>
				Nombre y apellidos.<br>
				Teléfono móvil.<br>
				Correo electrónico.<br>
				Cedula.<br>
				<a href="mailto: cinthiaizacajia@gmail.com">Enviar Mensaje</a>
				
				
				</blockquote>
			</div>

		</div>

	</div>
	<div class="container">
	</div>
	
</body>
</html>