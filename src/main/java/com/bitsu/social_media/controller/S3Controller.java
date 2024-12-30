package com.bitsu.social_media.controller;

import org.springframework.web.bind.annotation.*;

import com.bitsu.social_media.dto.S3PresignedURLResponse;
import com.bitsu.social_media.service.S3Service;

import lombok.RequiredArgsConstructor;


@CrossOrigin
@RestController
@RequestMapping("api/v1/s3")
@RequiredArgsConstructor
public class S3Controller {

    private final S3Service s3Service;

    @GetMapping("/generate-presigned-url")
    public S3PresignedURLResponse generatePresignedUrl(@RequestParam String fileName, @RequestParam String contentType) {
        return s3Service.generatePresignedUrl(fileName, contentType);
    }
}
