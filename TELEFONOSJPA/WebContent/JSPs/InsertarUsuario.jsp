<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Guia telefonica</title>
<link rel="stylesheet" type="text/css" href="../css/estilos.css">

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
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Inicio"
						style="color: black;">Inicio</a></li>	
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Iniciar"
						style="color: black;">Iniciar Sesion</a></li>
					
					<li class="nav-item"><a class="nav-link "
						href="/PracticaJSPYJEE/BuscarPorCedulaServlet?accion=Insertar"
						style="color: black;">Registrar Usuario</a></li>
				
				</ul>			
			</div>
			</nav>
	</div>
	
	<div class="container col-lg-3">
	
	

	<h1>Formulario</h1> 
          <form action="/PracticaJSPYJEE/InsertarUsuarioServlet" method="post" >
                <label for="numero"> Cedula:</label>
                <input type="text" id="cedula" name="cedula" class="form-control" required="required" min="10"   maxlength="10"  onkeypress="return validarNumeroo(event, this)"/>
                <br>

                  <label for="tipo">Nombre:</label>
                  <input type="text" id="nombre" name="nombre" class="form-control" required="required" onkeyup="return validarLetras(this)"/>
                  <br>

                  <label for="operadora">Apellido:</label>
                
                  <input type="text" id="apellido" name="apellido"  class="form-control"  required="required" onkeyup="return validarLetras(this)" />
                    <br>
                   <label for="operadora">Correo:</label>
                  <input type="text" id="correo" name="correo" class="form-control" required="required"  />
                    <br>
                   <label for="operadora">Contraseña:</label>
                  <input type="text" id="contra" name="contra"  class="form-control"  required="required"/>
                        
                <br>
                 <input type="submit" id="crear" value="Usuario" name="accion" class="btn btn-default" />
                                
          </form>
      </div>
</body>
</html>