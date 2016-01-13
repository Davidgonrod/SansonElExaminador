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

    <title>Registra detalles de tu evento</title>
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
  	<section class="col-md-3 hidden-xs hidden-sm">
		<br>
		<img src="img/persona.png" align="center" class="img-rounded" alt="id" width="180" height="170">	
				<h4>Men&#250;</h4>
				<div class="list-group">
					<a href="mainInstructor.jsp" class="list-group-item  ">Inicio</a>
					<a href="crearExamenPartic.jsp" class="list-group-item active">Crear examen</a>
					<a href="solicitudesParticipante.jsp" class="list-group-item">Solicitudes de participantes</a>
					<a href="registrarInstructor.jsp" class="list-group-item ">Registrar participante</a>
					<a href="bancoPreguntasInst.jsp" class="list-group-item ">Registrar banco de preguntas</a>
					<a href="InsCuenta.jsp" class="list-group-item ">Administrar cuenta</a>
				</div>
			</section>
					<br>

			<div class="container">
				<section class="main row">
					<article class="col-md-9">
					 <h2 class="post-contenido text-justify">
						 En este espacio podr&#225;s detallar tus eventos
					 </h2>
					</article>
						<br> <br> <br> <br> <br>
							<br>
						<div class="row">
						 <div class="color2 col-md-6">
							 <p>
								    Nombra tu evento:
							 </p>
							 <div class="input-group col-md-8">
				 			  <span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
				 			  <input type="text" name="evento" class="form-control" aria-describedby="basic-addon1">
							</div>
							<p><br>
							   T&iacute;tulo del examen 
							</p>
			<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
			<input type="text" name="examen" class="form-control" placeholder="Ponle un nombre" aria-describedby="basic-addon1">
			</div><p><br>
 	<div class="input-group col-md-8">
      <select name="tipo" class="form-control" onchange="cambioTipo()">
      <option value="">Selecciona</option>
      <option value="Abierto">Abierto</option>
      <option value="Cerrado">Cerrado</option>
    </select></div> <p><br>
    Fecha de apertura </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-calendar" id="basic-addon1"></span>
			<input type="text" name="fechaIni" placeholder="2016-01-12" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
    Hora de inicio</p> 
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-time" id="basic-addon1"></span>
			<input type="text" name="horaIni" placeholder="00:00 a 23:59" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
      Fecha de termino </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-calendar" id="basic-addon1"></span>
			<input type="text" name="fechaFin" placeholder="2016-01-12" id="fechaFin" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
      Hora finalizado </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-time" id="basic-addon1"></span>
			<input type="text" name="horaFin" placeholder="00:00 a 23:59" id="horaFin" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
    Duraci&oacute;n : </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-time" id="basic-addon1"></span>
			<input type="number" name="dura" max="120" min="15" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
    Tema </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
			<input type="text" name="tema" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
    Banco </p>
<div class="input-group col-md-8">
			<span class="input-group-addon glyphicon glyphicon-file" id="basic-addon1"></span>
			<input type="text" name="banco" class="form-control" aria-describedby="basic-addon1">
			</div><p><br>
	<textarea class="medium-textarea" name="participantes" ref="Medium"></textarea>
	</div><br><br><br>
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
    <script src="js/RegistrarEvento.js"> </script>
  </body>
</html>
