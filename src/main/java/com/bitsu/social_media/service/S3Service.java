package com.bitsu.social_media.service;

import java.net.URL;
import java.time.Duration;

import org.springframework.stereotype.Service;

import com.bitsu.social_media.dto.S3PresignedURLResponse;
import com.bitsu.social_media.model.User;

import lombok.RequiredArgsConstructor;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;
import software.amazon.awssdk.services.s3.presigner.S3Presigner;
import software.amazon.awssdk.services.s3.presigner.model.PresignedPutObjectRequest;

@Service
@RequiredArgsConstructor
public class S3Service {

    private final S3Presigner s3Presigner;
    private final UserService userService;

    public S3PresignedURLResponse generatePresignedUrl(String fileName, String contentType) {
        User user = userService.getLoggedInUser();
        String uniqueKey = user.getId() + "-" + System.currentTimeMillis() + "-" + fileName;
        PresignedPutObjectRequest presignedRequest = s3Presigner.presignPutObject(b -> b
                .putObjectRequest(PutObjectRequest.builder()
                        .bucket("revature-project-2-bucket")
                        .contentType(contentType)
                        .key(uniqueKey)
                        .build())
                .signatureDuration(Duration.ofMinutes(5)));
        URL preSignedUrl = presignedRequest.url();
        return new S3PresignedURLResponse(preSignedUrl.toString(), "https://revature-project-2-bucket.s3.us-east-2.amazonaws.com/" + uniqueKey);
    }
}
