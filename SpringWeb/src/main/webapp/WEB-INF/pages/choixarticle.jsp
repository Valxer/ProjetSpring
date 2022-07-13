<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Going Medieval | Panier</title>
<link href="<c:url value="/ressources/css/common_styles.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
<%@ include file="/header.jsp" %>
<div class="container">
	<h1 class="row justify-content-center">Préparez votre assaut</h1>
	<h3>La commande de <c:out value="${client.nom}" /> <c:out value="${client.prenom}" />
	<c:if test ="${totalp != null}">
	(Montant de panier : <c:out value="${totalp}" /> &euro;)
	</c:if>
	</h3>
	<div class="row justify-content-between">
		<div id="menu sélection" class="col">
			<p>Fais ton choix parmi nos engins de siège artisanaux:</p>
			<form:form method="post" modelAttribute="achat">
				<select class="form-select" name="Idarticle" required>
				  <option value="">Selectionne un article</option>
				  <c:forEach var="article" items="${articles}">
				  		<option value=<c:out value="${article.ref }" />><c:out value="${article.nom} ${article.prix } €" /></option>
				  </c:forEach>
				</select>
				<div class="col-4">
					Quantité :<input name="quantite" type="number" value="1">				
				</div>
				<button type="submit" class="btn btn-primary mt-4" value="ajouter">Ajouter</button>			
			</form:form>
		</div>
		<div id="panier" class="col">
		<table class="table table-striped">
				<thead class="thead-dark">
					<tr>
					    <th>Articles</th>
					    <th>Quantité</th>
					    <th>Prix total</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="achat" items="${panier }">	
					    <tr>
					    	<td><c:out value="${achat.nomart }" /></td>
					    	<td><c:out value="${achat.quantite }" /></td>
				            <td><c:out value="${achat.total }" /></td>
					    </tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div class="d-flex justify-content-end">
		<c:choose>
			<c:when test="${panier == null}">
			<a class='btn btn-secondary' href='../panier/commande' role='button'>Panier vide</a>
			</c:when>
			<c:otherwise>
			<a class='btn btn-success' href='./recap' role='button'>Valider le panier</a>
       		<a class='btn btn-danger' href='./reset' role='button'>Vider le panier</a>
			</c:otherwise>
		</c:choose>		
	</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.5/dist/umd/popper.min.js" integrity="sha384-Xe+8cL9oJa6tN/veChSP7q+mnSPaj5Bcu9mPX5F5xIGE0DVittaqT5lorf0EI7Vk" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-kjU+l4N0Yf4ZOJErLsIcvOU2qSb74wXpOhqTvwVx3OElZRweTnQ6d31fXEoRD1Jy" crossorigin="anonymous"></script>

<%@ include file="/footer.jsp" %>
</body>
</html>