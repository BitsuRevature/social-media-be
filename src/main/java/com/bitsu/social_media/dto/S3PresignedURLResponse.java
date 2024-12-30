package com.bitsu.social_media.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class S3PresignedURLResponse {
    private String uploadURL;
    private String downloadURL;
}
