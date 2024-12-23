package com.bitsu.social_media.controller;
import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import com.bitsu.social_media.dto.ReactionRequest;
import com.bitsu.social_media.dto.ReactionResponse;
import com.bitsu.social_media.model.ReactionType;
import com.bitsu.social_media.service.ReactionService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.ResponseEntity;
import java.util.List;

public class ReactionControllerTest {
    @Mock
    private ReactionService reactionService;

    @InjectMocks
    private ReactionController reactionController;

    private ReactionRequest reactionRequest;
    private ReactionResponse reactionResponse;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);

        reactionRequest = ReactionRequest.builder()
                .postId(1)
                .type(ReactionType.LIKE)
                .build();

        reactionResponse = ReactionResponse.builder()
                .id(1)
                .type(ReactionType.LIKE)
                .build();
    }

    @Test
    void testGetReactions() {
        when(reactionService.getReactions()).thenReturn(List.of(reactionResponse));

        ResponseEntity<List<ReactionResponse>> response = reactionController.getReactions();

        assertNotNull(response);
        assertEquals(1, response.getBody().size());
        verify(reactionService).getReactions();
    }

    @Test
    void testCreateReaction() {
        when(reactionService.createReaction(reactionRequest)).thenReturn(reactionResponse);

        ResponseEntity<ReactionResponse> response = reactionController.createReaction(reactionRequest);

        assertNotNull(response);
        assertEquals(reactionResponse, response.getBody());
        verify(reactionService).createReaction(reactionRequest);
    }

    @Test
    void testDeleteReaction() {
        doNothing().when(reactionService).deleteReaction(1);

        reactionController.deleteReaction(1);

        verify(reactionService).deleteReaction(1);
    }

    @Test
    void testUpdateReaction() {
        when(reactionService.updateReaction(1, reactionRequest)).thenReturn(reactionResponse);

        ResponseEntity<ReactionResponse> response = reactionController.updateReaction(1, reactionRequest);

        assertNotNull(response);
        assertEquals(reactionResponse, response.getBody());
        verify(reactionService).updateReaction(1, reactionRequest);
    }

}
