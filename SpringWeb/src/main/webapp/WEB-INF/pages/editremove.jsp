<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Modify/Remove Article</title>
<link href="<c:url value="/ressources/css/common_styles.css" />" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<%@ include file="/header.jsp" %>
	<form:form action = "../admin/update" method="post" class="mt-4 d-flex flex-column align-items-center" modelAttribute="art" >
			<p class="mb-0"><label for="idref">Référence :</label></p>
			<form:input class="col-3" path = "ref" id="idref" readonly="true" /><br>
			
			<p class="mb-0"><label for="idnom">Nom :</label></p>
			<form:input class="col-3" path = "nom" id="idnom" required="required"/><br>
			
			<p class="mb-0"><label for="iddesc">Description :</label></p>
			<form:textarea class="col-3" path = "description" id="iddesc" required="required"/><br>
			
			<p class="mb-0"><label for="idprix">Prix :</label></p>
			<form:input class="col-3" path = "prix" id="idprix" required="required"/><br>
			
			<p class="mb-0"><label for="idimg">URL Image :</label></p>
			<form:input class="col-3" path = "image" id="idimg" required="required"/><br>
			<form:hidden path="version" />
		
			<input type = "submit" value ="Modifier article" class="btn btn-primary"/>
		</form:form>
		<%@ include file="/footer.jsp" %>
</body>
</html>