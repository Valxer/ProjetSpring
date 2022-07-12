<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/common_styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
  	<div class="container">
	<h2 class="text-center">Menu</h2>
	<table class="table table-striped table-primary">
		<thead class="table-dark">
			<tr>
			    <th scope="col">ref</th>
			    <th scope="col">nom</th>
			    <th scope="col">description</th>
			    <th scope="col">prix</th>
			    <th scope="col">image</th>
			  </tr>
			</thead>
		<tbody>
		<c:forEach var="article" items="${articles}">
			<tr>
				<th scope="row"><c:out value="${article.ref }" /></th>
				<td><c:out value="${article.nom }" /></td>
				<td><c:out value="${article.description }" /></td>
				<td><c:out value="${article.prix }" /></td>
				<td><c:out value="${article.image }" /></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	<hr>
	
	<div class="container">
	<h2>Editer un article</h2>
	
	<div id="menu sélection" class="col">
		<form action="Edit" method="post">
			<select class="form-select" name="select" required>
			  <option value="">Selectionne un article</option>
			  <c:forEach var="article" items="${articles}">
			  		<option value=<c:out value="${article.ref }" />><c:out value="${article.nom}" /></option>
			  </c:forEach>
			</select>
			<button type="submit" class="btn btn-primary mt-4" value="ajouter">Editer</button>			
		</form>
	</div>
	</div>
	<hr>
	<div class="container">
	<h2>Ajouter un article</h2>
	<div class="w-75 d-flex flex-column align-items-center">
		<form action = "Create">
			<label for="ref">Ref :</label>
			<input name = "ref" type = "text" required/><br><br>
			
			<label for="nom">Nom :</label>
			<input name = "nom" type = "text" required/><br><br>
			
			<label for="description">Descritpion :</label>
			<input name = "description" type = "text" /><br><br>
			
			<label for="prix">Prix :</label>
			<input name = "prix" type = "number" required/><br><br>
			
			<label for="image">URL de l'image :</label>
			<input name = "image" type = "text" /><br><br>
		
			<input type = "submit" value ="Ajouter" class="btn btn-primary"/>
		</form>
	</div>
	</div>
  
	<%@ include file="/footer.jsp" %>
</body>
</html>