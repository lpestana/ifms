<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<main class="container">
	<h1>Cadastro de Categoria</h1>
	<form action="sistema?logica=CategoriaSalvar" method="post">
	  <div class="mb-3">
	    <label for="id" class="form-label">Id</label>
	    <input type="text" class="form-control" id="id" name="id" readonly value="${categoria.id}">
	  </div>
	  <div class="mb-3">
	    <label for="descricao" class="form-label">Descrição</label>
	    <input type="text" class="form-control" id="descricao" name="descricao"  value="${categoria.descricao}">
	  </div>
	  <button type="submit" class="btn btn-primary">Salvar</button>
	</form>		
	</main>
	
</body>
</html>