package model;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Version;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "client")
	private Client client;
	@ManyToMany
	@JoinTable(name = "commande_article", joinColumns = @JoinColumn(name = "idcommande") , inverseJoinColumns = @JoinColumn(name = "idarticle") )
	private List<Article> articles = new ArrayList<Article>();
	private Date date;
	private int total;
	@Version
	private int version;

	public Commande(Client client, Date date, int total) {
		super();
		this.client = client;
		this.date = date;
		this.total = total;
	}

	public Commande(Client client, List<Article> articles, Date date, int total) {
		super();
		this.client = client;
		this.articles = articles;
		this.date = date;
		this.total = total;
	}

	public Commande() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public List<Article> getArticles() {
		return articles;
	}

	public void setArticles(List<Article> articles) {
		this.articles = articles;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	@Override
	public String toString() {
		return "Commande [id=" + id + ", client=" + client + ", articles=" + articles + ", date=" + date + ", total="
				+ total + "]";
	}

}
