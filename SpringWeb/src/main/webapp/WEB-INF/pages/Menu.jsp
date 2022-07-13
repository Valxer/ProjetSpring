<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/ressources/css/common_styles.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<title>Going Medieval | Menu</title>
</head>
<body>
	<%@ include file="/header.jsp" %>
  
	<h2 class="text-center my-4">Catalogue</h2>
	<section class="menu-container d-flex flex-wrap justify-content-around">
		<c:forEach var="article" items="${articles}">
			<div style="width: 350px; margin: 30px 15px;" class="articlecard text-center" onclick="myFunction(this)">
				<img style="object-fit:cover;" src=<c:out value="${article.image}"/> alt="Girl in a jacket" width="250" height="250">
				<h3><c:out value="${article.nom}"/></h3>
				<p class="desc" style="display:none;"><c:out value="${article.description}"/></p>
				<h3><c:out value="${article.prix} €"/></h3>				
			</div>
		</c:forEach>
	</section>
	<script>
		function myFunction(target) {
			if (target.querySelector(".desc").style.display == "none")
		 		target.querySelector(".desc").style.display = "block"
		 	else
		 		target.querySelector(".desc").style.display = "none"
		}
	</script>
  
	<%@ include file="/footer.jsp" %>
</body>
</html>