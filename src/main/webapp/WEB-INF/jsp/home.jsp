<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>TP3 - Desenvolvimento de Serviços em Nuvem com Java</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">		
		
		<div class="container-fluid" style="margin-top:80px">

			<c:import url="/WEB-INF/jsp/header.jsp"/>
			
			
			<div class="card-deck">
			    <div class="card bg-info">
			      <div class="card-body text-center">
			        <p class="card-text">Consultar CEP</p>
			        <a href="/cep" class="btn btn-primary stretched-link">Entrar</a>
			      </div>
			    </div>
			    <div class="card bg-success">
			      <div class="card-body text-center">
			        <p class="card-text">Estados</p>
			        <a href="/estados" class="btn btn-primary stretched-link">Entrar</a>
			      </div>
			    </div>
			    <div class="card bg-warning">
			      <div class="card-body text-center">
			      	<h5 class="card-title">Caio Vitor da Costa</h5>
			        <p class="card-text">Git</p>
			        <a href="https://github.com/caioco007/TP3_Nuvem.git" class="btn btn-primary stretched-link">Entrar</a>
			      </div>
			    </div>    
			</div>
		</div>
	</div>	
</body>
</html>