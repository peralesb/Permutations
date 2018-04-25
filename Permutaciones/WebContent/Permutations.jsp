<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Codigo Gratis</title>
		<!-- CSS -->
    	<link rel="stylesheet" href="css/main.css"> 
	</head>
	<body>
	  	<!-- Intro -->
	    <header id="encabezado">        
	      <div class="container">
	            <div class="contents" class="grid-block">
	              <h1><font color="#000000">PERMUTACIONES</font></h1>
	              <p><font color="#000000">Es el numero de combinaciones posibles en el orden de un conjunto dado.</font><br>
	              <font color="#000000">Este ejercicio trata de resolver el numero de permutaciones en un string dado.</font><br>
	              <font color="#000000">El numero de permutaciones esta dado por (N*N)-N donde N es el numero de caracteres en el String.</font></p>	              
	            </div>
	      </div>      
	    </header>
	    <!-- Intro End -->
    
	    <!-- Permutations -->
	    <section id="permutations">
	    	  <form method="post" action="SPermutaciones">
	    	  	<input type="hidden" name="pAccion" value="ListarPermutaciones" />
	          	<h2><span>Introduce un string:</span></h2>
	 			<input type="text" id="cadena" name="cadena" value=<%=request.getAttribute("cadena")==null?"":request.getAttribute("cadena")%>><br>
	          	<input type="submit" href="#" class="btn btn-common">
	          </form>
	    </section>
	    <!-- Permutations End -->
	    
	    <!-- Results -->
	    <section id="results">
	    	<h2><span>Resultados: <%=request.getAttribute("numPerm")=="0"?"2":request.getAttribute("numPerm")%></span></h2>
	    	<textarea readonly rows=<%=request.getAttribute("numPerm")=="0"?"2":request.getAttribute("numPerm")%> cols="100"><%=request.getAttribute("Permutaciones")==null?"":request.getAttribute("Permutaciones")%>
	    	</textarea>
		</section>
	    <!-- Results End -->

 
	</body>
</html>