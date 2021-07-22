<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<title>Listagem de Categorias</title>
</head>
<body>
	<main class="container">
	<h1>Listagem de Categorias</h1>
	  <a href="sistema?logica=CategoriaNovo" class="btn btn-primary">Novo</a>
	  <table class="table table-striped table-hover table-bordered table-sm">
	  	<tr>
	  		<th>ID</th>
	  		<th>Descrição</th>
	  		<th></th>
	  	</tr>
	  	<c:forEach items="${lista}" var="categoria">
	  		<tr>
		  		<td>${categoria.id}</td>
		  		<td>${categoria.descricao}</td>
		  		<td>
		  		<a href="sistema?logica=CategoriaEditar&id=${categoria.id}" class="btn btn-primary">Editar</a>
		  		<a href="sistema?logica=CategoriaExcluir&id=${categoria.id}" class="btn btn-danger">Excluir</a>
		  		</td>
	  		</tr>
	  	</c:forEach>
	  </table>
	</main>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</html>