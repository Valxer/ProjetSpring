package repository;

import org.springframework.data.jpa.repository.JpaRepository;

import model.Article;

public interface ArticleRepository extends JpaRepository<Article, Integer> {

}
