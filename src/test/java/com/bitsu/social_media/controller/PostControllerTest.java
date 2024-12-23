package com.bitsu.social_media.controller;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import com.bitsu.social_media.dto.PostRequest;
import com.bitsu.social_media.dto.PostResponse;
import com.bitsu.social_media.service.PostService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;
import java.util.List;


public class PostControllerTest {
    @Mock
    private PostService postService;

    @InjectMocks
    private PostController postController;

    private PostRequest postRequest;
    private PostResponse postResponse;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);

        postRequest = new PostRequest();
        postRequest.setContent("Sample content");
        postRequest.setMediaURL("http://example.com/media.jpg");

        postResponse = new PostResponse();
        postResponse.setId(1);
        postResponse.setContent("Sample content");
        postResponse.setMediaURL("http://example.com/media.jpg");
    }

    @Test
    void testGetPosts() {
        when(postService.getPosts("sample")).thenReturn(List.of(postResponse));

        ResponseEntity<List<PostResponse>> response = postController.getPosts("sample");

        assertNotNull(response);
        assertEquals(1, response.getBody().size());
        verify(postService).getPosts("sample");
    }

    @Test
    void testCreatePost() {
        when(postService.createPost(postRequest)).thenReturn(postResponse);

        ResponseEntity<PostResponse> response = postController.createPost(postRequest);

        assertNotNull(response);
        assertEquals(postResponse, response.getBody());
        verify(postService).createPost(postRequest);
    }

    @Test
    void testDeletePost() {
        doNothing().when(postService).deletePost(1);

        postController.deletePost(1);

        verify(postService).deletePost(1);
    }

    @Test
    void testUpdatePost() {
        when(postService.updatePost(1, postRequest)).thenReturn(postResponse);

        ResponseEntity<PostResponse> response = postController.updatePost(1, postRequest);

        assertNotNull(response);
        assertEquals(postResponse, response.getBody());
        verify(postService).updatePost(1, postRequest);
    }

    @Test
    void testDeleteReactions() {
        doNothing().when(postService).deleteReactions(1);

        postController.deleteReactions(1);

        verify(postService).deleteReactions(1);
    }
}
