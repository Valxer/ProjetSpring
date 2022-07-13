package controller;

import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import model.Client;
import repository.ClientRepository;

@Controller
@RequestMapping("/menu")
public class MenuController {

	@Autowired
	private ClientRepository clientRpository;

	@RequestMapping("/menu")
	public String menu() {
		return "Menu";
	}

	@RequestMapping("/connexion")
	public String connexion(Model model) {
		return "Connexion";
	}

	@PostMapping("/inscription")
	public String create(@ModelAttribute(name = "newclient") Client client, Model model) {
		this.clientRpository.save(client);
		model.addAttribute("numID", client.getId());
		return "ConfirmationInscription";
	}

	@RequestMapping("/accueil")
	public String acc() {
		return "Accueil";
	}

	@RequestMapping("/Admin")
	public String admin() {
		return "LoginAdmin";
	}

	@PostMapping("/connect")
	public String con(@RequestParam(name = "identifiant") int id, @RequestParam(name = "mdp") String mdp,
			HttpSession session) {
		Optional<Client> c = clientRpository.findById(id);
		if (c.get() != null) {
			if (c.get().getPassword().equals(mdp)) {
				session.setAttribute("client", c.get());
				return "ConfirmationConnexion";
			} else {
				return "ErreurConnexion";
			}
		} else {
			return "ErreurConnexion";
		}
	}

	@RequestMapping("/deconnexion")
	public String deco(HttpSession session) {
		session.setAttribute("client", null);
		session.setAttribute("panier", null);
		session.setAttribute("totalp", null);
		return "redirect:/menu/accueil";
	}

}
