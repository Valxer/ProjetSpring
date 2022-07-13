package model;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Version;

@Entity
public class Commande {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "client")
	private Client client;
	private Date date;
	@OneToMany(mappedBy = "commande")
	private List<CommandeArticle> articles;
	private int total;
	@Version
	private int version;

	public Commande() {
		super();
	}

	public Commande(Client client, Date date, int total) {
		super();
		this.client = client;
		this.date = date;
		this.total = total;
	}

	public List<CommandeArticle> getArticles() {
		return articles;
	}

	public void setArticles(List<CommandeArticle> articles) {
		this.articles = articles;
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
		return "Commande [id=" + id + ", client=" + client + ", date=" + date + ", total=" + total + "]";
	}

}
