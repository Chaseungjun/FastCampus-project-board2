package com.fastcampus.projectboard2.repository;

import com.fastcampus.projectboard2.domain.ArticleComment;
import com.fastcampus.projectboard2.domain.QArticle;
import com.fastcampus.projectboard2.domain.QArticleComment;
import com.fastcampus.projectboard2.dto.ArticleCommentDto;
import com.querydsl.core.types.dsl.StringExpression;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.querydsl.QuerydslPredicateExecutor;
import org.springframework.data.querydsl.binding.QuerydslBinderCustomizer;
import org.springframework.data.querydsl.binding.QuerydslBindings;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@RepositoryRestResource
public interface ArticleCommentRepository extends
        JpaRepository<ArticleComment, Long>,
        QuerydslPredicateExecutor<ArticleComment>,
        QuerydslBinderCustomizer<QArticleComment> {


    @Override
    default void customize(QuerydslBindings bindings, QArticleComment root){ // 인터페이스 안에서는 메서드를 구현할 수 없지만 자바 8부터 가능해짐 (default 메서드)
        bindings.excludeUnlistedProperties(true); // 리스틩을 하지 않은 프로퍼티는 검색 대상에서 제외
        bindings.including(root.content, root.createdAt, root.createdBy); // 검색 조건

        bindings.bind(root.content).first(StringExpression::containsIgnoreCase);
        bindings.bind(root.createdBy).first(StringExpression::containsIgnoreCase);
//        bindings.bind(root.createdAt).first(StringExpression::eq);
    }
}