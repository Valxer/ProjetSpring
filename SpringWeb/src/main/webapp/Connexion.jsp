<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="CSS/Style.css"/>
<link rel="stylesheet" href="css/common_styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="header.jsp" %>
  
  <h2 class="text-center">Connexion/Inscription</h2>
  <hr>
  <section class="d-flex flex-column align-items-center">
	<div class="w-75 d-flex flex-column align-items-center">
	 	<h3>Déjà client ? Connectez-vous:</h3>
		<form action = "ServletConnexion">
			<label for="identifiant">Identifiant</label>
			<input name = "identifiant" type = "number" placeholder="00000000" required/><br><br>
		
			<label for="mdp">Mot de passe</label>
			<input name = "mdp" type = "password" required/><br><br>
		
			<input type = "submit" value ="Se connecter" class="btn btn-primary" style="margin:0 auto;"/>
		</form>  
	</div>
	<hr>
	<div class="w-75 d-flex flex-column align-items-center">
		<h3>Première visite ? Inscrivez-vous:</h3>
		<form action = "ServletInscription">
			<label for="nom">Nom</label>
			<input name = "nom" type = "text" placeholder="Votre nom" required/><br><br>
			
			<label for="prenom">Prenom</label>
			<input name = "prenom" type = "text" placeholder="Votre prenom" required/><br><br>
			
			<label for="adresse">Adresse</label>
			<input name = "adresse" type = "text" placeholder="Votre adresse" required/><br><br>
			
			<label for="mdp">Mot de passe</label>
			<input name = "mdp" type = "password" required/><br><br>
		
			<input type = "submit" value ="S'inscrire" class="btn btn-primary"/>
		</form>
	</div>
  </section>
	
	<%@ include file="footer.jsp" %>
</body>
</html>