package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.CommandeArticle;

public interface CommandeArticleRepository extends JpaRepository<CommandeArticle, Integer> {

}
