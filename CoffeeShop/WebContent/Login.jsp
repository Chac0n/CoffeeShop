<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html>

<head>
	<link rel="stylesheet" type="text/css" href="loginStyle.css">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>
	<form action="login" method="post">

  		<div class="imgcontainer">
    		<img src="coffeeShopLogo.png" alt="logo" class="logo">
 		</div>

  		<div class="input">
    		<input type="text" placeholder="Usuario"  name = "inpt" required>
  		</div>
  		
     	<div id="botones">
    		<button class="button" disabled>Registro</button>  
    		<button class="button button2" type ="submit">Login</button>
    	</div>
	</form>
</body>

</html>
