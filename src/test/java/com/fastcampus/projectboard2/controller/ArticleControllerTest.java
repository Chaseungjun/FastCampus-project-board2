package com.fastcampus.projectboard2.controller;

import com.fastcampus.projectboard2.controller.ArticleController;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import static org.junit.jupiter.api.Assertions.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;


@DisplayName("View 컨트롤러 - 게시글")
@WebMvcTest(ArticleController.class) // 입력한 컨트롤러만 가져와서 테스트
class ArticleControllerTest {

    private final MockMvc mockMvc;

    public ArticleControllerTest(@Autowired MockMvc mockMvc) {
        this.mockMvc = mockMvc;
    }

    @Test
    @DisplayName("게시글리스트_페이지_정상호출")
    void 게시글리스트_페이지_정상호출() throws Exception {
        //given
        mockMvc.perform(get("/articles"))
                .andExpect(status().isOk())
                .andExpect(content().contentTypeCompatibleWith(MediaType.TEXT_HTML))
                .andExpect(model().attributeExists("articles")) // modelAttribute에 "articles"라는 키가 있는지
                .andExpect(view().name("articles/index2"));  // templates폴더 하위의 파일경로 인식
    }


    @Test
    @DisplayName("게시글_상세페이지_정상호출")
    void 게시글_상세페이지_정상호출() throws Exception {
        //given
        mockMvc.perform(get("/articles/1"))
                .andExpect(status().isOk())
                .andExpect(content().contentTypeCompatibleWith(MediaType.TEXT_HTML))
                .andExpect(model().attributeExists("article"))
                .andExpect(model().attributeExists("articleComments"))
                .andExpect(view().name("articles/detail"));


    }
    @Disabled("구현 중이므로 아직은 테스트 대상에서 제외")
    @Test
    @DisplayName("게시글_검색전용페이지")
    void 게시글_검색전용페이지() throws Exception {
        //given
        mockMvc.perform(get("/articles/search"))
                .andExpect(status().isOk())
                .andExpect(content().contentTypeCompatibleWith(MediaType.TEXT_HTML))
                .andExpect(model().attributeExists("articles/search"));


    }
    @Disabled("구현 중이므로 아직은 테스트 대상에서 제외")
    @Test
    @DisplayName("게시판_해시태그_검색페이지")
    void 게시판_해시태그_검색페이지() throws Exception {
        //given
        mockMvc.perform(get("/articles/search-hashtag"))
                .andExpect(status().isOk())
                .andExpect(content().contentTypeCompatibleWith(MediaType.TEXT_HTML))
                .andExpect(model().attributeExists("articles/search-hashtag"));


    }
}