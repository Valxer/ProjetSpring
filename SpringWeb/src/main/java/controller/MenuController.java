package controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Client;
import repository.ClientRepository;

@Controller
@RequestMapping("/menu")
public class MenuController {

	@Autowired
	private ClientRepository clientRpository;

	@RequestMapping("menu")
	public String menu() {
		return "Menu";
	}

	@RequestMapping("/connexion")
	public String con(@RequestParam(name = "identifiant") int id, @RequestParam(name = "mdp") String mdp,
			HttpSession session) {
		Optional<Client> c = clientRpository.findById(id);
		if (c.get() != null) {
			if (c.get().getPassword().equals(mdp)) {
				session.setAttribute("client", c);
				return "ConfirmationConnexion";
			} else {
				return "ErreurConnexion";
			}
		} else {
			return "ErreurConnexion";
		}
	}

	@RequestMapping("/commande")
	public String comm(HttpSession session) {
		if (session.getAttribute("client") == null) {
			return "./Connexion";
		} else {
			return "choixarticle";
		}
	}

	@RequestMapping("/deconnexion")
	public String deco(HttpSession session) {
		session.setAttribute("client", null);
		session.setAttribute("panier", null);
		session.setAttribute("totalp", null);
		return "./Acceuil";

	}

}
