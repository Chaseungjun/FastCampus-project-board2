package com.fastcampus.projectboard2.dto;

import lombok.Data;

@Data
public class updateArticleDto {
    private final String title;
    private final String content;
    private final String hashtag;


    public static updateArticleDto of(String title, String content, String hashtag) {
        return new updateArticleDto(title, content, hashtag);
    }
}
