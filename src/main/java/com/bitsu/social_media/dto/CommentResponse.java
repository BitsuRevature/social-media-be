package com.bitsu.social_media.dto;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class CommentResponse {

    private int Id;
    private String content;
    private LocalDateTime createdAt;
    private UserResponse user;

}
