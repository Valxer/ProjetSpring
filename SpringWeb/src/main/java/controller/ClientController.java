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
@RequestMapping("/clients")
public class ClientController {

	@Autowired
	private ClientRepository clientRpository;

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

}
