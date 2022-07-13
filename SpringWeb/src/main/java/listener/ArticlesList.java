package listener;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import model.Article;
import repository.ArticleRepository;

/**
 * Application Lifecycle Listener implementation class ArticlesList
 *
 */
@WebListener
public class ArticlesList implements ServletContextListener {

	/**
	 * Default constructor.
	 */
	public ArticlesList() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see ServletContextListener#contextDestroyed(ServletContextEvent)
	 */
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

	/**
	 * @see ServletContextListener#contextInitialized(ServletContextEvent)
	 */
	public void contextInitialized(ServletContextEvent arg0) {
		List<Article> articles = new ArrayList<Article>();
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("./applicationContext.xml");
		ArticleRepository artrepo = ctx.getBean(ArticleRepository.class);
		articles = artrepo.findAll();
		arg0.getServletContext().setAttribute("articles", articles);
	}

}
