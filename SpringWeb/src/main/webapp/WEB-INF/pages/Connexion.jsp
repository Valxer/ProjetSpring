<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/ressources/css/common_styles.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Going Medieval | Connexion</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
  <section class="d-flex ">
	<div class="w-75 d-flex flex-column align-items-center">
	 	<h3>Déjà client ? Connectez-vous:</h3>
		<form action="../menu/connect" method="post" class="d-flex flex-column align-items-center">
			<p class="mb-0"><label for="identifiant">Identifiant</label></p>
			<input name = "identifiant" type = "number" placeholder="00000000" required/></br>
		
			<p class="mb-0"><label for="mdp">Mot de passe</label></p>
			<input name = "mdp" type = "password" required/></br>
		
			<input type = "submit" value ="Se connecter" class="btn btn-primary" style="margin:0 auto;"/>
		</form>  
	</div>
	<div class="w-75 d-flex flex-column align-items-center">
		<h3>Première visite ? Inscrivez-vous:</h3>
		<form action = "../menu/inscription" method="post" modelAttribute="newclient" class="d-flex flex-column align-items-center">
			<p class="mb-0"><label for="nom">Nom</label></p>
			<input name = "nom" type = "text" placeholder="Votre nom" required/><br>
			
			<p class="mb-0"><label for="prenom">Prenom</label></p>
			<input name = "prenom" type = "text" placeholder="Votre prenom" required/><br>
			
			<p class="mb-0"><label for="adresse">Adresse</label></p>
			<input name = "adresse" type = "text" placeholder="Votre adresse" required/><br>
			
			<p class="mb-0"><label for="password">Mot de passe</label></p>
			<input name = "password" type = "password" required/><br>
		
			<input type = "submit" value ="S'inscrire" class="btn btn-primary"/>
		</form>
	</div>
  </section>
	
	<%@ include file="/footer.jsp" %>
</body>
</html>