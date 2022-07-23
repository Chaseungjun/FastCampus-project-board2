package com.fastcampus.projectboard2.controller;


import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.transaction.annotation.Transactional;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@Disabled("Spring Data Rest 통합테스트는 불필요하므로 제외시킴") // 클래스 레벨에 놓으면 해당 클래스의 모든 테스트는 실행하지 않음
@DisplayName("Data Rest API 테스트")
//@WebMvcTest // DataRest는 이걸로 테스트 할 수 없음
@AutoConfigureMockMvc // McokMvc의 존재를 파악
@Transactional
@SpringBootTest
public class DataRestTest {

    private final MockMvc mockMvc;

    public DataRestTest(@Autowired MockMvc mockMvc) {
        this.mockMvc = mockMvc;
    }
    
    @Test
    @DisplayName("API 게시글 리스트 조회")
    void test1() throws Exception {

        //given
        mockMvc.perform(get("/api/articles"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.valueOf("application/hal+json"))); // MediaType 검사에는 HaL json 타입이 없으므로 valueOf로 검사
    }

    @Test
    @DisplayName("API 게시글 단건 조회")
    void test2() throws Exception {
        //given
        mockMvc.perform(get("/api/articles/1"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.valueOf("application/hal+json"))); // MediaType 검사에는 HaL json 타입이 없으므로 valueOf로 검사
    }

    @Test
    @DisplayName("API 게시글 댓글 조회")
    void test3() throws Exception {
        //given
        mockMvc.perform(get("/api/articles/1/articleComments"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.valueOf("application/hal+json"))); // MediaType 검사에는 HaL json 타입이 없으므로 valueOf로 검사
    }

    @Test
    @DisplayName("API 댓글 리스트 조회")
    void test4() throws Exception {
        //given
        mockMvc.perform(get("/api/articleComment"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.valueOf("application/hal+json"))); // MediaType 검사에는 HaL json 타입이 없으므로 valueOf로 검사
    }

    @Test
    @DisplayName("API 게시글 단건 조회")
    void testName() throws Exception {
        //given
        mockMvc.perform(get("/api/articleComment/1"))
                .andExpect(status().isOk())
                .andExpect(content().contentType(MediaType.valueOf("application/hal+json"))); // MediaType 검사에는 HaL json 타입이 없으므로 valueOf로 검사
    }

    @DisplayName("[api] 회원 관련 API 는 일체 제공하지 않는다.")
    @Test
    void givenNothing_whenRequestingUserAccounts_thenThrowsException() throws Exception {
        // Given

        // When & Then
        mockMvc.perform(get("/api/userAccounts")).andExpect(status().isNotFound());
        mockMvc.perform(post("/api/userAccounts")).andExpect(status().isNotFound());
        mockMvc.perform(put("/api/userAccounts")).andExpect(status().isNotFound());
        mockMvc.perform(patch("/api/userAccounts")).andExpect(status().isNotFound());
        mockMvc.perform(delete("/api/userAccounts")).andExpect(status().isNotFound());
        mockMvc.perform(head("/api/userAccounts")).andExpect(status().isNotFound());
    }
}
