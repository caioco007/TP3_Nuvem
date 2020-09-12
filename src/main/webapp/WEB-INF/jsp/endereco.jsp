<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
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
		<h3>Cadastro de Locação</h3>
			
			<div class="form-group">
			
				<form action="/cep" method="post" class="form-inline">
				  <div class="form-group mx-sm-3 mb-2">
				    <label for="usr" class="sr-only">CEP</label>
				    <input type="text" class="form-control mb-2 mr-sm-2" placeholder="Entre com o CEP" name="cep" value="${endereco.cep}">
				  </div>
				  <button type="submit" class="btn btn-primary">Buscar</button>
				</form>
			  	
			  	<div class="row">
			      <div class="form-group col-md-3 mb-3">
			      	 <label for="usr" class="mr-sm-2">Logradouro:</label>
				   	 <input type="text" class="form-control" name="logradouro" value="${endereco.logradouro}">
			      </div>
			      <div class="form-group col-md-3 mb-3">
			      	 <label for="usr" class="mr-sm-2">Complemento:</label>
				   	 <input type="text" class="form-control" name="complemento" value="${endereco.complemento}">
			      </div>
			      
			    </div>
			    <div class="row">
			    	<div class="form-group col-md-3 mb-3">
			      	 <label for="bairro" class="mr-sm-2">Bairro:</label>
				   	 <input type="text" class="form-control" name="bairro" value="${endereco.bairro}">
			      </div>
			      <div class="form-group col-md-3 mb-3">
				   	 <label for="usr" class="mr-sm-2">Localidade:</label>
				   	 <input type="text" class="form-control" name="localidade" value="${endereco.localidade}">
			      </div>
			      <div class="form-group col-md-1">
				   	 <label for="usr" class="mr-sm-1">UF:</label>
				   	 <input type="text" class="form-control" name="uf" value="${endereco.uf}">
			      </div>
			    </div>
			</div>
			
	</div>
	
</body>
</html>