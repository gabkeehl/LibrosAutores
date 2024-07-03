<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Nuevo JSP con Bootstrap</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
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

<br>

<div class="container p-3">
	<div class="row">
		<div class="col-6">
			<br>
			<form action=""></form>
			<div>
			<label><h4>Agrega tu libro</h4></label>
			
			<br>
			
			<input type="text" class="form-control" id="basic-url" aria-describedby="basic-addon3">
			</div>
		<label><h5>Descripción</h5></label>
			<textarea rows="3" class="form-control" id="TextArea1"></textarea>
			
			<br>
			<button type="button" class="btn btn-success">Guardar</button>
			
		</div>
		<br>
		
	<div class="col-6">
		<table class="table table-success table-striped">
 		<thead>
    		<tr>
      			<th scope="col">ID</th>
      			<th scope="col">Título</th>
      			<th scope="col">Descripción</th>
      			
    		</tr>
    		
    		<tbody>
    			<tr>
    				<th scope="col">
    			</tbody>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
      <td>Otto</td>
      <td>@mdo</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
      <td>Thornton</td>
      <td>@fat</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td colspan="2">Larry the Bird</td>
      <td>@twitter</td>
    </tr>
  </tbody>
			</table>
	</div>
</div>




</div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>