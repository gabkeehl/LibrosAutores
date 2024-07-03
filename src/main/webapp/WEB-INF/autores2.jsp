<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" import="models.Autor" import="java.util.ArrayList" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nuevo JSP con Bootstrap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<style type="text/css">
  	
  	textarea{
  	width:100%;
  	}
  	
  	</style>
  </head>
  <body>
  
  <nav class="navbar navbar-expand-lg bg-info">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Navbar</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <div class="nav-item">
       
      <div class="row">
       		<div class="col-3 offset-1">
          	<a class="nav-link active" aria-current="page" href="#">Home</a>
        </div>
        <div class="col-3 offset-1">
          <a class="nav-link active" aria-current="page" href="/LibrosAutores/Libros">Libros</a>
          </div>
         <div class="col-3 offset-1"> 
         	<a class="nav-link active" aria-current="page" href="/LibrosAutores/Autores">Autores</a>
         </div>
        </div>
        </div>
    </div>
  </div>
</nav>

	<div class="container p-3">
		<div class="col-6" >
			<form  action="/LibrosAutores/Autores" method="post" class="form-group row">
			
			<div>
			<label for="Nombre" class="form-label"> <h5>Agregar Nombre de Autor</h5></label>
			
				<input type="text" class="form-control" id="Nombre" name="Nombre" aria-describedby="basic-addon3" placeholder="Ingrese Nombre">
			</div>
			
			<br>
				
			<div>
				<label for="Apellido"><h5> Agregar Apellido </h5></label>
				
				<input type="text" class="form-control" id="Apellido" name="Apellido" aria-describedby="basic-addon3" placeholder="Ingrese Apellido">
			</div>
			
			<br> 
			
			<div>
				<label> <h5> Notas </h5></label>
				
				<div><textarea type="form-control" id="Notas" name="Notas"></textarea>
				
				</div>
				<br>
				
				<input type="submit" value="Guardar" class="btn btn-primary">
				
				</form>
				</div>
				</div>
	</div>
	

	<div class="col-5 offset-1 d-block m-auto">
		<% 
		ArrayList<Autor> autores = (ArrayList<Autor>)request.getAttribute("autores"); 
		%>
		
		<h4 class="text-center">Listado de Autores</h4>
		
		<% for (Autor a: autores) {%>
		<ul class ="list-group">
			<li class="list-group-item text-center" id="l-autores">
				<%=a.id %> .- <%=a.nombre %> <%=a.apellido %> <a href="/LibrosAutores/DetalleAutor">Ver</a>
				</li>
				
				
			</ul>
			
			</div>
			<br>
	<%}%>
	
<br>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body> 
</html>