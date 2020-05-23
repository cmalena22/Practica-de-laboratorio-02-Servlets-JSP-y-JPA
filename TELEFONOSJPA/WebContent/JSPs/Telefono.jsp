<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bienvenido Usuario</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Bienvenido</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="ListarTelefono.jsp" >Listar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="ModificarTelefono.jsp">Modificar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="RegistraTelefono.jsp">Registrar Telefono</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="EliminarTelefono.jsp">Eliminar Telefono</a>
      </li>
     
    </ul>
    <div class="dropdown">
  <button style="border: none;" class="btn btn-outline-dark dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
   ${usuario}
  </button>
  
  <div class="dropdown-menu text-center"  aria-labelledby="dropdownMenuButton" >
  <img alt="" src="../imagenes/login.png" height="100" width="100" align="center">
  <a class="dropdown-item" href="#">${name}</a>
      <a class="dropdown-item" href="#">${apellido}</a>
    <a class="dropdown-item" href="#">${usuario}</a>
    <a class="dropdown-item" href="#">${nombre}</a>
	<div class="dropdown-divider"></div>
	<form action="/PracticaJSPYJEE/CerrarSesionServlet" method="get">
		
		   <input type="submit" id="crear" value="Salir" name="accion"/>
	</form>
  </div>
</div>
  </div>
</nav>

</body>
</html>