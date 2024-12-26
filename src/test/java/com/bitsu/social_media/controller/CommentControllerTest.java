//package com.bitsu.social_media.controller;
//
//import static org.mockito.Mockito.*;
//import static org.junit.jupiter.api.Assertions.*;
//
//import com.bitsu.social_media.dto.CommentRequest;
//import com.bitsu.social_media.dto.CommentResponse;
//import com.bitsu.social_media.service.CommentService;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//import org.mockito.InjectMocks;
//import org.mockito.Mock;
//import org.mockito.MockitoAnnotations;
//import org.springframework.http.ResponseEntity;
//import java.util.List;
//
//
//public class CommentControllerTest {
//    @Mock
//    private CommentService commentService;
//
//    @InjectMocks
//    private CommentController commentController;
//
//    private CommentRequest commentRequest;
//    private CommentResponse commentResponse;
//
//    @BeforeEach
//    void setUp() {
//        MockitoAnnotations.openMocks(this);
//
//        commentRequest = CommentRequest.builder()
//                .content("Sample comment")
//                .postId(1)
//                .build();
//
//        commentResponse = CommentResponse.builder()
//                .Id(1)
//                .content("Sample comment")
//                .build();
//    }
//
//    @Test
//    void testGetComments() {
//        when(commentService.getComments()).thenReturn(List.of(commentResponse));
//
//        ResponseEntity<List<CommentResponse>> response = commentController.getComments();
//
//        assertNotNull(response);
//        assertEquals(1, response.getBody().size());
//        verify(commentService).getComments();
//    }
//
//    @Test
//    void testCreateComment() {
//        when(commentService.createComment(commentRequest)).thenReturn(commentResponse);
//
//        ResponseEntity<CommentResponse> response = commentController.createComment(commentRequest);
//
//        assertNotNull(response);
//        assertEquals(commentResponse, response.getBody());
//        verify(commentService).createComment(commentRequest);
//    }
//
//    @Test
//    void testDeleteComment() {
//        doNothing().when(commentService).deleteComment(1);
//
//        commentController.deleteComment(1);
//
//        verify(commentService).deleteComment(1);
//    }
//
//    @Test
//    void testUpdateComment() {
//        when(commentService.updateComment(1, commentRequest)).thenReturn(commentResponse);
//
//        ResponseEntity<CommentResponse> response = commentController.updateComment(1, commentRequest);
//
//        assertNotNull(response);
//        assertEquals(commentResponse, response.getBody());
//        verify(commentService).updateComment(1, commentRequest);
//    }
//}
