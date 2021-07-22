<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
	<main class="container">
	<h1>Cadastro de Produto</h1>
	<form action="sistema?logica=ProdutoSalvar" method="post">
	  <div class="mb-3">
	    <label for="id" class="form-label">Id</label>
	    <input type="text" class="form-control" id="id" name="id" readonly value="${produto.id}">
	  </div>
	  <div class="mb-3">
	    <label for="descricao" class="form-label">Descricao</label>
	    <input type="text" class="form-control" id="descricao" name="descricao"  value="${produto.descricao}">
	  </div>
	  <div class="mb-3">
	    <label for="valorunitario" class="form-label">Valor Unitário</label>
	    <input type="text" class="form-control" id="valorunitario" name="valorunitario"  value="${produto.valorunitario}">
	  </div>
	  <div class="mb-3">
	    <label for="embalagem" class="form-label">Embalagem</label>
	    <input type="text" class="form-control" id="embalagem" name="embalagem" value="${produto.embalagem}">
	  </div>
	  <div class="mb-3">
	    <label for="estoque" class="form-label">Estoque</label>
	    <input type="text" class="form-control" id="estoque" name="estoque"  value="${produto.estoque}">
	  </div>
	  <div class="mb-3">
	    <label for="cod_categoria" class="form-label">Categoria</label>
		<select class="form-select" name="cod_categoria" id="cod_categoria">
			<c:forEach items="${categorias}" var="categoria">
				<option ${produto.categoria.id==categoria.id ? "selected":"" } value="${categoria.id}">${categoria.descricao}</option>
	  		</c:forEach>		   	
		</select>	  
	  </div>
	  <button type="submit" class="btn btn-primary">Salvar</button>
	</form>	
	
	</main>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</html>