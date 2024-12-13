package com.bitsu.social_media.dto;

import com.bitsu.social_media.model.ReactionType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class ReactionRequest {
    private ReactionType type;
    private int postId;
}
