package com.fastcampus.projectboard2.repository;

import com.fastcampus.projectboard2.domain.Article;
import com.fastcampus.projectboard2.domain.QArticle;
import com.querydsl.core.types.dsl.StringExpression;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource
public interface ArticleRepository extends
        JpaRepository<Article, Long>,
        QuerydslPredicateExecutor<Article>,  // 모든 필드에 대하여 대소문자 구분없이 검색가능, 부분검색은 불가능
        QuerydslBinderCustomizer<QArticle> {

    Page<Article> findByTitle(String title, Pageable pageable);

    @Override
    default void customize(QuerydslBindings bindings, QArticle root){ // 인터페이스 안에서는 메서드를 구현할 수 없지만 자바 8부터 가능해짐 (default 메서드)
        bindings.excludeUnlistedProperties(true); // 리스틩을 하지 않은 프로퍼티는 검색 대상에서 제외
        bindings.including(root.title, root.hashtag, root.createdAt, root.createdBy); // 검색 조건

        bindings.bind(root.title).first(StringExpression::containsIgnoreCase); // 부분검색 기능 구현
        bindings.bind(root.hashtag).first(StringExpression::containsIgnoreCase);
        bindings.bind(root.createdBy).first(StringExpression::containsIgnoreCase);
//        bindings.bind(root.createdAt).first(StringExpression::eq);
    }
}