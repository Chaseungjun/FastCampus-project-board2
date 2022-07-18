package com.fastcampus.projectboard2.domain;

import java.time.LocalDateTime;

public class ArticleComment {


    private Long id;
    private Article article_id;
    private String content;

    private LocalDateTime createdAt;
    private LocalDateTime modifiedAt;
    private String createdBy;
    private String modifiedBy;
}
