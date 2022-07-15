<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/ressources/css/common_styles.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
  	<div class="container">
	<h2 class="text-center my-4">Catalogue</h2>
	<table class="table table-striped table-primary">
		<thead class="table-dark">
			<tr>
			    <th scope="col">ref</th>
			    <th scope="col">nom</th>
			    <th scope="col">description</th>
			    <th scope="col">prix</th>
			    <th scope="col">image</th>
			    <th scope="col" class="col-2"/>
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
				<td >
					<div class="d-flex justify-content-around align-items-center h-100">
	                	<form:form action='./update' method="get" class="h-100">
	                		<button type="submit" name="id" class="btn btn-primary " value =<c:out value="${article.ref}"/>> Update </button>
	                	</form:form>
	                	<form:form action='./remove' method="post" class="h-100">
	                		<button type="submit" name="id" class="btn btn-danger " value =<c:out value="${article.ref}"/>> Remove </button>
	                	</form:form>
                	</div>
                </td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
	
	<hr>
	<div class="container d-flex flex-column align-items-center" onclick="myFunction(this)">
		<h2 class="btn btn-primary addbtn">Ajouter un article</h2>
		<div class=" flex-column align-items-center addform" style="display:none;">
			<form:form action = "./create" method="post" modelAttribute="newart" class="d-flex flex-column align-items-center">
				
				<p class="mb-0"><label for="nom">Nom :</label></p>
				<input name = "nom" type = "text" required/><br>
				
				<p class="mb-0"><label for="description">Descritpion :</label></p>
				<input name = "description" type = "text" /><br>
				
				<p class="mb-0"><label for="prix">Prix :</label></p>
				<input name = "prix" type = "number" required/><br>
				
				<p class="mb-0"><label for="image">URL de l'image :</label></p>
				<input name = "image" type = "text" /><br>
			
				<input type = "submit" value ="Ajouter" class="btn btn-primary"/>
			</form:form>
		</div>
	</div>
	<script>
		function myFunction(target) {
			if (target.querySelector(".addform").style.display == "none"){
		 		target.querySelector(".addform").style.display = "flex"
		 		target.querySelector(".addbtn").style.display = "none"
			}
		}
	</script>
  
	<%@ include file="/footer.jsp" %>
</body>
</html>