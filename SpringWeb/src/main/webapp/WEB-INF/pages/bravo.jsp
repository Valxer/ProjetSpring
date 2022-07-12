<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Restaurant | Order Completed</title>
<link rel="stylesheet" href="css/common_styles.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body>
	<%@ include file="/header.jsp" %>
	<div class="text-center">
		<h1>Votre commande a bien été validée ! Montant : <%=request.getAttribute("totalfinal") %> € </h1>
		<p>Numéro de commande :
		<%= session.getAttribute("p")%>
		</p>
		<p>Elle sera livrée aussi rapidement que possible à votre adresse : <c:out value="${client.adresse}"/></p>
	</div>
	
	<%@ include file="/footer.jsp" %>
</body>
</html>