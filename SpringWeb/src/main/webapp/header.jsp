<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<header>
<a href="../menu/accueil" class="d-flex justify-content-center"><img src="https://zupimages.net/up/22/28/783d.png" height="200"></a>
<nav class="navbar-dark bg-black" style="height:60px;">
      <ul class="nav justify-content-around align-items-center text-center h-100">
        <li class="nav-item"> <a class="nav-link" href="../menu/accueil"> Accueil </a></li>
        <li class="nav-item"> <a class="nav-link" href="../menu/menu"> Catalogue </a> </li>
        <c:choose>
            <c:when test="${client == null}">
                <li class='nav-item'> <a class='nav-link' href='../menu/connexion'>Connexion/Inscription</a> </li>
				<c:choose>
		            <c:when test="${admin == null}">
		                <li class='nav-item'> <a class='nav-link' href='../admin/login'>Admin</a> </li>
		            </c:when>
		            <c:otherwise>
		                <li class='nav-item'> <a class='nav-link' href='../admin/article'>Gestion articles</a> </li>
		                <li class='nav-item'> <a class='nav-link' href='../admin/deconnexion'>Deconnexion Admin</a> </li>
		            </c:otherwise>
	        	</c:choose>
            </c:when>
            <c:otherwise>
                <li class='nav-item'> <a class='nav-link' href='../panier/commande'>Commande</a> </li>
                <li class='nav-item'> <a class='nav-link' href='../menu/deconnexion'>Deconnexion</a> </li>
            </c:otherwise>
        </c:choose>
      </ul>
</nav>
</header>
