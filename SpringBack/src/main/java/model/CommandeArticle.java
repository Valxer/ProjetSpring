package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Version;

@Entity
public class CommandeArticle implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@ManyToOne
	@JoinColumn(name = "commande")
	private Commande commande;
	@Id
	@ManyToOne
	@JoinColumn(name = "article")
	private Article article;
	private int quantite;
	@Version
	private int version;

	public CommandeArticle() {
	}

	public CommandeArticle(Commande commande, Article article, int quantite) {
		this.commande = commande;
		this.article = article;
		this.quantite = quantite;
	}

	public Commande getCommande() {
		return commande;
	}

	public void setCommande(Commande commande) {
		this.commande = commande;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	public int getQuantite() {
		return quantite;
	}

	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}

	@Override
	public String toString() {
		return "CommandeArticle [commande=" + commande + ", article=" + article + ", quantite=" + quantite + "]";
	}

}
