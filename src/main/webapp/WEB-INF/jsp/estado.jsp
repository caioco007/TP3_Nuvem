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
		</div>
			<h3>Estado</h3>
			<table class="table table-striped">
			    <thead>
			      <tr>
			        <th>Id</th>
			        <th>Sigla</th>
			        <th>Nome</th>
			        <th>Região</th>
			        <th></th>
			        <th></th>
			      </tr>
			    </thead>
			    <tbody>   
			      <c:forEach var="e" items="${estados}">  		  		
					  <tr>
					    <td>${e.id}</td>				       
					    <td>${e.sigla}</td>
					    <td>${e.nome}</td>
					    <td>${e.regiao.nome}</td>
					    <td><a href="/estados/${e.id}/municipios">Municipio</a></td>
					  </tr>
				  </c:forEach>
			    </tbody>
			  </table>
	</div>	
	
</body>
</html>