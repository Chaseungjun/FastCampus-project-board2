package com.fastcampus.projectboard2.service;

import com.fastcampus.projectboard2.domain.type.SearchType;
import com.fastcampus.projectboard2.dto.ArticleDto;
import com.fastcampus.projectboard2.dto.updateArticleDto;
import com.fastcampus.projectboard2.repository.ArticleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import com.fastcampus.projectboard2.domain.type.SearchType;
import com.fastcampus.projectboard2.dto.ArticleDto;
import com.fastcampus.projectboard2.dto.ArticleWithCommentsDto;
import com.fastcampus.projectboard2.repository.ArticleRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@RequiredArgsConstructor
@Transactional
@Service
public class ArticleService {

    private final ArticleRepository articleRepository;

    @Transactional(readOnly = true)
    public Page<ArticleDto> searchArticles(SearchType searchType, String searchKeyword, Pageable pageable) {
        return Page.empty();
    }

    @Transactional(readOnly = true)
    public ArticleWithCommentsDto getArticle(Long articleId) {
        return null;
    }

    public void saveArticle(ArticleDto dto) {
    }

    public void updateArticle(ArticleDto dto) {
    }

    public void deleteArticle(long articleId) {
    }

}
