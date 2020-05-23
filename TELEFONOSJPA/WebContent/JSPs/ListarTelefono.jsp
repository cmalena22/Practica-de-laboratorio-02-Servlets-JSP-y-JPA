<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix= "c"  uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar Telefono</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

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
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Registrar" >Insertar Telefono</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Modificar">Modificar Telefono</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/PracticaJSPYJEE/ListTelefonoServlet?accion=Eliminar">Eliminar Telefono</a>
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
</nav>
<form action="/PracticaJSPYJEE/ListTelefonoServlet"  method="post">
 <input class="btn btn-danger btn block" type="submit" name="accion" value="Listar"> 
 <input id="cedula" name="cedula" type="hidden" value="${nombre}">
 </form>
 	<div >
 		<table class="table table-hover">
 		<thead>
 			<tr>
 			 <th> ID</th>
			    <th> Numero</th>
 				<th> Tipo</th>
				<th> Operadora </th>
					<th> Cedula </th>
				  </tr>
  </thead>  
  <tbody>  
  <c:forEach var="tel" items="${telefono}">  
  <tr>
  <td>${tel.getCodigo()}</td>
  	<td>${tel.getNumero()}</td>
 	<td>${tel.getTipo()}</td>
 	<td>${tel.getOperadora()}</td> 
 	<td>${tel.getUsuario_cedula().getCedula()}</td> 
  </tr>
 
  </c:forEach>
  
  
  </tbody>
 
 
 
 </table>
 
 
 
 
 
 </div>
</body>
</html>