<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<header>
<a href="../menu/accueil" class="d-flex justify-content-center"><img src="https://zupimages.net/up/22/26/nfnq.jpg" height="200"></a>
<nav class="navbar-dark bg-primary ">
      <ul class="nav justify-content-around">
        <li class="nav-item"> <a class="nav-link" href="../menu/accueil">Accueil</a></li>
        <li class="nav-item"> <a class="nav-link" href="../menu/menu">Menu</a> </li>
        <c:choose>
            <c:when test="${client == null}">
                <li class='nav-item'> <a class='nav-link' href='../menu/connexion'>Connexion/Inscription</a> </li>
				<!--admin-->
            </c:when>
            <c:otherwise>
                <li class='nav-item'> <a class='nav-link' href='../panier/commande'>Commande</a> </li>
                <li class='nav-item'> <a class='nav-link' href='../menu/deconnexion'>Deconnexion</a> </li>
            </c:otherwise>
        </c:choose>
      </ul>
</nav>
</header>
