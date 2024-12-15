package com.bitsu.social_media.service;

import com.bitsu.social_media.dto.PostRequest;
import com.bitsu.social_media.dto.PostResponse;
import com.bitsu.social_media.model.Comment;
import com.bitsu.social_media.model.Post;
import com.bitsu.social_media.model.Reaction;
import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.PostRepo;
import com.bitsu.social_media.repository.UserRepo;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class PostService {

    private final PostRepo postRepo;
    private final UserRepo userRepo;
    private final UserService userService;
    private final CommentService commentService;
    private final ReactionService reactionService;
    public List<PostResponse> getPosts() {
        return postRepo.findAll().stream()
                .map(this::mapToPostResponse)
                .toList();
    }


    public PostResponse mapToPostResponse(Post post) {

        List<Comment> comments = post.getComments();
        List<Reaction> reactions = post.getReactions();
        if(comments == null) {
            comments = List.of();
        }
        if(reactions == null) {
            reactions = List.of();
        }

        return PostResponse.builder()
                .Id(post.getId())
                .content(post.getContent())
                .mediaURL(post.getMediaURL())
                .createdAt(post.getCreatedAt())
                .user(
                        userService.mapToUserResponse(
                                post.getUser()
                        )
                )
                .comments(
                        comments.stream().map(commentService::mapToCommentResponse).toList()
                )
                .reactions(
                        reactions.stream().map(reactionService::mapToReactionResponse).toList()
                )
                .build();
    }

    public PostResponse createPost(PostRequest postRequest) {

        User user = userService.getLoggedInUser();


//        log.info(user.toString());

        Post post = Post.builder()
                .content(postRequest.getContent())
                .mediaURL(postRequest.getMediaURL())
                .user(user)
                .build();
        return mapToPostResponse(postRepo.save(post));
    }

    public void deletePost(int id) {
        log.info("Delete: " + id);
        Post post = postRepo.findById(id).orElseThrow(() -> new RuntimeException("Post not found"));
        postRepo.delete(post);
    }

    public PostResponse updatePost(int id, PostRequest postRequest) {
        Post post = postRepo.findById(id).orElseThrow(() -> new RuntimeException("Post not found"));
        post.setContent(postRequest.getContent());
        post.setMediaURL(postRequest.getMediaURL());
        return mapToPostResponse(postRepo.save(post));
    }

}
