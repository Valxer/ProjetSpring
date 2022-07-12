package model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Version;

@Entity
public class Admin {
	@Id
	private int id;
	private String password;
	private boolean actif;
	@Version
	private int version;

	public Admin() {

	}

	public Admin(int identifiant, String motDePasse, boolean actif) {
		this.id = identifiant;
		this.password = motDePasse;
		this.actif = actif;
	}

	public int getVersion() {
		return version;
	}

	public void setVersion(int version) {
		this.version = version;
	}

	public int getId() {
		return id;
	}

	public void setId(int identifiant) {
		this.id = identifiant;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String motDePasse) {
		this.password = motDePasse;
	}

	public boolean isActif() {
		return actif;
	}

	public void setActif(boolean actif) {
		this.actif = actif;
	}

	@Override
	public String toString() {
		return "Admin [id=" + id + ", password=" + password + ", actif=" + actif + "]";
	}

}