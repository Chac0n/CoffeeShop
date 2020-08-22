<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>

<html>

<head>
	<link rel="stylesheet" type="text/css" href="inicioStyle.css">
	<script type="text/javascript" src="inicioJS.js"></script>  
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<div class="header">
  		<img src="coffeeShopLogo.png" alt="logo" class="logo"> 
		<div class="icons">
			<img src="buscar.png" alt="logo" width ="20" height= "20" color= "green">
			<img src="etiqueta.png" alt="logo" width ="20" height= "20">
			<img src="usuario.png" alt="logo" width ="20" height= "20">
		</div>  
	</div>

	<div class="row">
  		<div class="column" id ="c2">
    		<h2>Cola</h2>
    		<button onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Agregar Orden</button>
			<div id="id01" class="modal">
  
  			<form class="modal-content animate" action="javascript:void(0);">
     		<div class="imgcontainer">
      			<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
    		</div>
			<div class="container" id="c1">
      			<label for="uname"><b>Escoger Producto</b></label>
     			<select id="positionT" name="positionT" class="form-control">
   				 </select>
          		<script>
          		function Get(yourUrl){
        	    var Httpreq = new XMLHttpRequest(); // a new request
        	    Httpreq.open("GET",yourUrl,false);
        	    Httpreq.send(null);
        	    return Httpreq.responseText;          
        		}
          		
          		var json_obj = JSON.parse(Get('https://iitd7euw75.execute-api.us-east-1.amazonaws.com/services/products/getProducts'));
          		var i;
          		for (i = 0; i < json_obj.items.length; i++) {
        	  	var x = json_obj.items[i].name;
        	 	var id = json_obj.items[i].id;
              	var select= document.getElementById("positionT");
             	var option = document.createElement("option");
               	option.text = x ;
               	option.id = id;
               	option.value = x;
              	select.add(option);
          		}
               	</script>
        		<label for="uname"><b>Cantidad</b></label>
        		<input type="text"  id = "cant" required>
      			<button onClick="addOrder()">Agregar Producto</button>
      			<button onClick="addOrder2()">Agregar Orden</button>  
    		</div>
  			</form>
		</div>
		</div>
		
	<div class="column"  id = "c3">
    	<h2>Preparación</h2>
  	</div>
  	
  	<div class="column" id = "c4">
    	<h2>Finalizado</h2>
  	</div>
  	
  	<div class="column" id = "c5">
    	<h2>Entregado</h2>
  	</div>
  	
	</div>
	
</body>

</html>