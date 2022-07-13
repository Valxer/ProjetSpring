import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Admin;
import repository.AdminRepository;
import repository.ArticleRepository;

public class Test {

	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository artrepo = ctx.getBean(ArticleRepository.class);
		// ClientRepository clrepo = ctx.getBean(ClientRepository.class);
		// CommandeRepository corepo = ctx.getBean(CommandeRepository.class);
		// System.out.println(artrepo.findAll());
		AdminRepository adminrepo = ctx.getBean(AdminRepository.class);
		Admin a = new Admin(1, "mdp", true);
		Admin a2 = new Admin(2, "mdp", false);
		adminrepo.save(a);
		adminrepo.save(a2);
		// CommandeArticleRepository coartrepo =
		// ctx.getBean(CommandeArticleRepository.class);
		// Article art = new Article("oui", "tres oui de ouf", 15, "truc.jpg");
		// artrepo.save(art);
		// Commande co = new Commande(clrepo.findById(1).get(), new Date(),
		// 165);
		// corepo.save(co);
		// Article art = artrepo.findById(1).get();
		// Commande co = corepo.findById(1).get();
		// coartrepo.save(new CommandeArticle(new IdCommandeArticle(co, art),
		// 5));
		ctx.close();
	}

}
