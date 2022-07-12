<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify/Remove Article</title>
<link rel="stylesheet" href="css/common_styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<%@ include file="/header.jsp" %>
	<form action = "Editarticle" method="post" class="mt-4">
			<label for="idref">Référence :</label>
			<input name = "ref" id="idref" type ="number" value=<c:out value="${editarticle.ref }" /> readonly/><br><br>
			
			<label for="idnom">Nom :</label>
			<input name = "nom" id="idnom" type ="text" value='<c:out value="${editarticle.nom }" />'  required/><br><br>
			
			<label for="iddesc">Description :</label>
			<input name = "desc" id="iddesc" type ="text" value='<c:out value="${editarticle.description }" />' required/><br><br>
			
			<label for="idprix">Prix :</label>
			<input name = "prix" id="idprix" type ="number" value=<c:out value="${editarticle.prix }" /> required/><br><br>
			
			<label for="idimg">URL Image :</label>
			<input name = "img" id="idimg" type ="text" value=<c:out value="${editarticle.image }" /> required/><br><br>
		
			<input type = "submit" value ="Modifier article" class="btn btn-primary"/>
			<a href="Delete?ref=<c:out value="${editarticle.ref }"/>">Supprimmer article</a>
		</form>
		<%@ include file="/footer.jsp" %>
</body>
</html>