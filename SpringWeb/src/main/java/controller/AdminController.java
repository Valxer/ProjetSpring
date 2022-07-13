package controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Admin;
import model.Article;
import repository.AdminRepository;
import repository.ArticleRepository;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	private AdminRepository adminRpository;
	@Autowired
	private ArticleRepository articleRepository;

	@RequestMapping("/login")
	public String admin() {
		return "LoginAdmin";
	}

	@RequestMapping("/article")
	public String article(HttpSession session) {
		if (session.getAttribute("admin") == null) {
			return "redirect:/menu/accueil";
		} else {
			return "adminArticle";
		}
	}

	@RequestMapping("/deconnexion")
	public String adminlogout(HttpSession session) {
		session.setAttribute("admin", null);
		return "LoginAdmin";
	}

	@PostMapping("/connect")
	public String conadmin(@RequestParam(name = "identifiant") int id, @RequestParam(name = "mdp") String mdp,
			HttpSession session) {
		Optional<Admin> a = adminRpository.findById(id);
		if (a.isPresent()) {
			if (!a.get().isActif() || !a.get().getPassword().equals(mdp)) {
				return "ErreurConnexion";
			} else {
				session.setAttribute("admin", a.get());
				return "redirect:/admin/article";
			}
		} else {
			return "ErreurConnexion";
		}
	}

	@GetMapping("/update")
	public ModelAndView update(@RequestParam(name = "id") int id) {
		Article a = this.articleRepository.findById(id).get();
		return new ModelAndView("editremove", "art", a);
	}

	@PostMapping("/update")
	public String update(@ModelAttribute(name = "art") Article Article, HttpServletRequest request) {
		articleRepository.save(Article);
		request.getServletContext().setAttribute("articles", articleRepository.findAll());
		return "redirect:/admin/article";
	}

	@PostMapping("/remove")
	public String remove(@RequestParam(name = "id") int id, HttpServletRequest request) {
		this.articleRepository.deleteById(id);
		request.getServletContext().setAttribute("articles", articleRepository.findAll());
		return "redirect:/admin/article";
	}

	@PostMapping("/create")
	public String create(@ModelAttribute(name = "newart") Article article, HttpServletRequest request) {
		this.articleRepository.save(article);
		request.getServletContext().setAttribute("articles", articleRepository.findAll());
		return "redirect:/admin/article";
	}
}
