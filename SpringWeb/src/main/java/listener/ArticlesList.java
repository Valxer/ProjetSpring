package listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import org.springframework.beans.factory.annotation.Autowired;

import repository.ArticleRepository;

/**
 * Application Lifecycle Listener implementation class ArticlesList
 *
 */
@WebListener
public class ArticlesList implements ServletContextListener {

	@Autowired
	private ArticleRepository articleRepository;

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
		// List<Article> articles = articleRepository.findAll();
		// arg0.getServletContext().setAttribute("articles", articles);
	}

}
