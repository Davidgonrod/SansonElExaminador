<%@page import="controlador.BeanUsuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="mx.ipn.upiicsa.sansonelexaminador.util.Attribute"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/estilos.css">
	<link rel="stylesheet" href="css/datepicker.css">
<title>Consulta Eventos</title>
</head>
<body class="bg-1">
<%@include file="header.frame.jsp" %>
<%@include file="messages.frame.jsp" %>
	<header>
		<nav class="navbar navbar-inverse navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navegacion-fm">
						<span class="sr-only">Desplegar / Ocultar Menu</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a href="index.jsp" class="navbar-brand">Plataforma de ex&#225;menes</a>
				</div>
				<div class="collapse navbar-collapse" id="navegacion-fm">
					<ul class="nav nav-pills">
						<li><a href="index.jsp">Inicio</a></li>
						<li class="dropdown">
							<a href="tutos.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button">
								Tutoriales <span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="tutos.jsp#tuto1">Crear una cuenta</a></li>
								<li><a href="tutos.jsp#tuto2">Ingresar a un evento</a></li>
								<li><a href="tutos.jsp#tuto3">Consultar el foro de preguntas</a></li>
							</ul>
						</li>
						<li><a href="preguntas.jsp">Foro de preguntas </a></li>
						<li><a href="soporte.jsp">Soporte</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	
<%BeanUsuario busuario=(BeanUsuario)request.getAttribute("busuario"); %>
<div align="center">
<table>
<tr>
<td colspan="2" align="center" class="text-danger">Eventos Encontrados</td>
</tr>
<tr>
<td><br><label>Evento:</label></td>
<td><input type="text" class="form-control" size="20" name="nombre" value="<%= busuario.getIdEvento() %>"></td>
</tr>
<tr>
<td><label>Id Participante:</label></td>
<td><input type="text" class="form-control" size="20" name="apellido" value="<%= busuario.getIdParticipante() %>"></td>
</tr>
<tr>
<td><label>Clave de Participacion:</label></td>
<td><input type="text" class="form-control" size="20" name="edad" value="<%= busuario.getClaveParticipacion() %>"></td>
</tr>
<tr>
<td><label>Examen:</label></td>
<td><input type="text" class="form-control" size="20" name="correo" value="<%= busuario.getExamen() %>"></td>
</tr>
</table>
</div>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

<% if(session.getAttribute(Attribute.Session.CURRENT_USER) == null) { %>
<a href="loggin.jsp">Login</a>
<% } %>
<footer>
		<div class="container">
			<div class="row">
				<div class="col-xs-6">
					<p>We're not muggles</p>
				</div>
				<div class="col-xs-6">
					<ul class="list-inline text-right">
						<li><a href="#">Cuenta</a></li>
						<li><a href="#">Principal</a></li>
					</ul>
				</div>
			</div>
		</div>

	</footer>

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>
