package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Commande;
import model.IdCommandeArticle;

public interface CommandeRepository extends JpaRepository<Commande, IdCommandeArticle> {

}
