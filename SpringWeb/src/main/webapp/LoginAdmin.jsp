<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="CSS/Style.css"/>
<link rel="stylesheet" href="css/common_styles.css">
<link rel="stylesheet" href="css/common_styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Insert title here</title>
</head>
	<body>
		<%@ include file="header.jsp" %>
	  
	  <h2 class="text-center">Connexion administrateur</h2>
	  <hr>
		<div class="w-75 d-flex flex-column align-items-center">
		 	<h3>Entrez vos identifiants administrateur:</h3>
			<form action = "ServletConnexionAdmin">
				<label for="identifiant">Identifiant</label>
				<input name = "identifiant" type = "number" placeholder="00000000" required/><br><br>
			
				<label for="mdp">Mot de passe</label>
				<input name = "mdp" type = "password" required/><br><br>
			
				<input type = "submit" value ="Se connecter" class="btn btn-primary" style="margin:0 auto;"/>
			</form>  
		</div>
		<%@ include file="footer.jsp" %>
	</body>
</html>