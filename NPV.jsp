<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="data:image/x-icon;base64,AAABAAEAEBAQAAAAAAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAvy5gAAAAAADMAKwAyy5gAM8uYAF/LmwAyzJkAM8yZADUALQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAERERERERERERERERERERERERAAAAARERERABEREAEREREBISEhAREREQEREREBERERASEhIQEREREBERERAREREQEhISEBERERAREREQEREREBgiIhAREREQEiIiEBERERABEREAEREREWc0UAERERERERERERERERERERERERH//wAA//8AAPAfAADnzwAA6q8AAO/vAADqrwAA7+8AAOqvAADv7wAA6C8AAOgvAADnzwAA8B8AAP//AAD//wAA" rel="icon" type="image/x-icon" />
<meta charset="ISO-8859-1">
<title>NPV Results</title>
 <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Raleway:200'>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<style>
body {
	font-family: 'Raleway', sans-serif;
	background-image: radial-gradient(circle at center, #899Dc4, #495D84);
	background-size: cover;
	background-repeat: no-repeat;
	height: 100vh;
	overflow: hidden;
	display: flex;
	justify-content: center;
	align-items: center;
	background: radial-gradient(ellipse at bottom, #1b2735, #090a0f);
	font-weight: 300;
}

img {
	border-radius: 10px;
	border: 1px solid #fff;
	display: block;
	margin-left: auto;
	margin-right: auto;
}

.container {
	max-width: 400px;
	width: 500px;
	margin: 0 auto;
	position: relative;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"],
	#contact input[type="url"], #contact textarea, #contact button[type="submit"]
	{
	font: 400 12px/16px "Roboto", Helvetica, Arial, sans-serif;
}

#contact {
	background: #F9F9F9;
	padding: 25px;
	margin: 150px 0;
	box-shadow: 0 0 20px 5px rgba(100, 100, 255, 0.4);
	border-radius: 10px;
	border: 1px solid #fff;
}

#contact h1 {
	display: block;
	font-size: 30px;
	font-weight: 300;
	margin-bottom: 10px;
}

#contact h4 {
	margin: 5px 0 15px;
	display: block;
	font-size: 13px;
	font-weight: 400;
}

fieldset {
	border-radius: 10px;
	border: 1px solid #fff;
	margin: 0 0 10px;
	min-width: 100%;
	padding: 0;
	width: 100%;
}

#contact input[type="text"], #contact input[type="email"], #contact input[type="tel"],
	#contact input[type="url"], #contact textarea {
	width: 100%;
	border: 1px solid #ccc;
	background: #FFF;
	margin: 0 0 5px;
	padding: 10px;
}

#contact input[type="text"]:hover, #contact input[type="email"]:hover,
	#contact input[type="tel"]:hover, #contact input[type="url"]:hover,
	#contact textarea:hover {
	-webkit-transition: border-color 0.3s ease-in-out;
	-moz-transition: border-color 0.3s ease-in-out;
	transition: border-color 0.3s ease-in-out;
	border: 1px solid #aaa;
}

#contact textarea {
	height: 100px;
	max-width: 100%;
	resize: none;
}

#contact button[type="submit"] {
	cursor: pointer;
	width: 100%;
	border-radius: 10px;
	border: 1px solid #fff;
	background: #58d;
	color: #FFF;
	margin: 0 0 5px;
	padding: 10px;
	font-size: 15px;
	box-shadow: 0 0 20px 5px rgba(100, 100, 255, 0.4);
}

#contact button[type="submit"]:hover {
	background: #ccf;
	-webkit-transition: background 0.3s ease-in-out;
	-moz-transition: background 0.3s ease-in-out;
	transition: background-color 0.3s ease-in-out;
}

#contact button[type="submit"]:active {
	box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}

.copyright {
	text-align: center;
}

#contact input:focus, #contact textarea:focus {
	outline: 0;
	border: 1px solid #aaa;
}

::-webkit-input-placeholder {
	color: #888;
}

:-moz-placeholder {
	color: #888;
}

::-moz-placeholder {
	color: #888;
}

:-ms-input-placeholder {
	color: #888;
}

.center {
	display: block;
	margin-left: auto;
	margin-right: auto;
	width: 50%;
}
a.button{
cursor: pointer;
  width: 100%;
   border-radius: 10px;
  border: 1px solid #fff;
  background: #58d;
  color: #FFF;
  margin: 0 0 5px;
  padding: 10px;
  font-size: 15px;
  text-decoration:none;
    box-shadow: 0 0 20px 5px rgba(100, 100, 255, 0.4);
}
a.button:hover{
background: #ccf;
  -webkit-transition: background 0.3s ease-in-out;
  -moz-transition: background 0.3s ease-in-out;
  transition: background-color 0.3s ease-in-out;
}
a.button:active{
box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.5);
}
</style>
<body>
	
	<div class="container">
		<form id="contact">

			<fieldset>
			<h3>NPV Results</h3>
				<div class="form-group">
					<label for="formGroupExampleInput">The NPV is</label> <input
						type="text" class="form-control" id="formGroupExampleInput"
						name="NPV" value=<%= request.getAttribute("NPV") %> readonly><br>
				</div>
			</fieldset>
			<fieldset>
				<button name="Store" type="submit" id="contact-submit"
					data-submit="...Sending">Store Results</button>
			</fieldset>
			<fieldset>
			<a href="http://localhost:8080/PIMCalculator/NPV.html" class="button">Back to NPV</a> 
			</fieldset>
			<p></p>
			<fieldset>
			
			<a href="http://localhost:8080/PIMCalculator/WelcomePage.html" class="button">Back to the Main Menu</a>
			</fieldset>
			<p></p>
			<p class="copyright"></p>
		</form>
	</div>






</body>
</html>