package com.fastcampus.projectboard2.repository;

import com.fastcampus.projectboard2.config.JpaConfig;
import com.fastcampus.projectboard2.domain.Article;
import com.fastcampus.projectboard2.domain.UserAccount;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.orm.jpa.DataJpaTest;
import org.springframework.context.annotation.Import;

import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;


@DisplayName("JPA 연결 테스트")
@Import(JpaConfig.class) // config에서 설정한 정보들을 테스트에 사용할 수 있게 가져옴
@DataJpaTest // JPA 기능만 테스트
class JpaRepositoryTest {

    private final ArticleRepository articleRepository;
    private final ArticleCommentRepository articleCommentRepository;
    private final UserAccountRepository userAccountRepository;


    public JpaRepositoryTest(
            @Autowired ArticleRepository articleRepository,
            @Autowired ArticleCommentRepository articleCommentRepository, @Autowired UserAccountRepository userAccountRepository) {
        this.articleRepository = articleRepository;
        this.articleCommentRepository = articleCommentRepository;
        this.userAccountRepository = userAccountRepository;
    }
    
    @Test
    @DisplayName("select test")
    void selectTest() throws Exception {
        //given
        //when
        List<Article> articles = articleRepository.findAll();

        //then
        assertThat(articles).isNotNull().hasSize(50);
    }

    @Test
    @DisplayName("insert test")
    void insertTest() throws Exception {
        //given
        long previous = articleRepository.count();
        //when
        UserAccount userAccount = userAccountRepository.save(UserAccount.of("uno", "pw", null, null, null));
        Article article = Article.of(userAccount, "new article", "new content", "#spring");

        articleRepository.save(article);

        //then
        assertThat(articleRepository.count()).isEqualTo(previous + 1);
    }

    @Test
    @DisplayName("update test")
    void updateTest() throws Exception {
        //given
        Article article = articleRepository.findById(1L).orElseThrow();
        String updateHashtag = "#springboot";

        //when
        article.setHashtag(updateHashtag);
        Article savedArticle = articleRepository.save(article);

        //then
        assertThat(article.getHashtag()).isEqualTo("#springboot");
        assertThat(savedArticle).hasFieldOrPropertyWithValue("hashtag", updateHashtag);
    }

    @Test
    @DisplayName("delete test")
    void deleteTest() throws Exception {
        //given
        Article article = articleRepository.findById(1L).orElseThrow();
        long previousArticle = articleRepository.count();
        long previousArticleComment = articleCommentRepository.count();
        int deletedCommentSize = article.getArticleComments().size(); // 랜덤으로 생성했기때문에 article 1번에 댓글이 몇개 있는지 모름 있는 댓글을 다 지움

        //when
        articleRepository.delete(article);

        //then
        assertThat(articleRepository.count()).isEqualTo(previousArticle - 1);
        assertThat(articleCommentRepository.count()).isEqualTo(previousArticleComment - deletedCommentSize);
    }
}