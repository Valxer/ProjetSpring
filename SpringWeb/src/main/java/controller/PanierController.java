package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import model.Achat;
import model.Article;
import model.Client;
import model.Commande;
import model.CommandeArticle;
import model.IdCommandeArticle;
import repository.ArticleRepository;
import repository.CommandeArticleRepository;
import repository.CommandeRepository;

@Controller
@RequestMapping("/panier")
public class PanierController {

	@Autowired
	private CommandeRepository CoRepo;
	@Autowired
	private CommandeArticleRepository CoArRepo;
	@Autowired
	private ArticleRepository ArRepo;

	@GetMapping("/commande")
	public String choixarticles(HttpSession session) {
		if (session.getAttribute("client") == null) {
			return "redirect:/menu/connexion";
		} else {
			return "choixarticle";
		}
	}

	@GetMapping("/reset")
	public String reset(HttpSession session) {
		if (session.getAttribute("client") == null) {
			return "redirect:/menu/connexion";
		} else {
			session.setAttribute("panier", null);
			session.setAttribute("totalp", null);
			return "redirect:/panier/commande";
		}
	}

	@PostMapping("/commande")
	public String ajoutarticle(@ModelAttribute(name = "achat") Achat achat, HttpSession session) {
		Article art = ArRepo.findById(achat.getIdarticle()).get();
		achat.setNomart(art.getNom());
		achat.setTotal(achat.getQuantite() * art.getPrix());
		List<Achat> panier = new ArrayList<Achat>();
		int totalp = 0;
		if (session.getAttribute("totalp") != null)
			totalp = (int) session.getAttribute("totalp");
		if (session.getAttribute("panier") != null)
			panier = (List<Achat>) session.getAttribute("panier");
		totalp += achat.getTotal();
		for (Achat ach : panier) {
			if (achat.getIdarticle() == ach.getIdarticle()) {
				ach.setQuantite(ach.getQuantite() + achat.getQuantite());
				ach.setTotal(ach.getTotal() + achat.getTotal());
				achat = null;
				break;
			}
		}
		if (achat != null) {
			panier.add(achat);
		}
		session.setAttribute("totalp", totalp);
		session.setAttribute("panier", panier);
		return ("choixarticle");
	}

	@RequestMapping("/recap")
	public String recap(HttpSession session) {
		if (session.getAttribute("client") == null || session.getAttribute("panier") == null) {
			return "redirect:/panier/commande";
		} else {
			return "recap";
		}
	}

	@RequestMapping("/ordercompleted")
	public String ordercompleted(HttpSession session, Model model) {
		if (session.getAttribute("client") == null || session.getAttribute("panier") == null) {
			return "redirect:/panier/commande";
		} else {
			Client cl = (Client) session.getAttribute("client");
			int total = (int) session.getAttribute("totalp");
			Commande c = new Commande(cl, new Date(), total);
			List<Achat> panier = (List<Achat>) session.getAttribute("panier");
			this.CoRepo.save(c);
			session.setAttribute("p", c.getId());
			for (Achat a : panier) {
				this.CoArRepo.save(new CommandeArticle(
						new IdCommandeArticle(c, this.ArRepo.findById(a.getIdarticle()).get()), a.getQuantite()));
			}
			model.addAttribute("totalfinal", total);
			session.setAttribute("totalp", null);
			session.setAttribute("panier", null);
			return "bravo";
		}
	}

}
