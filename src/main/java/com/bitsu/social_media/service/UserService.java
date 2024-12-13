package com.bitsu.social_media.service;

import com.bitsu.social_media.dto.UserResponse;
import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.UserRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepo userRepo;

    public UserResponse mapToUserResponse(User user){
        return UserResponse.builder()
                .Id(user.getId())
                .username(user.getUsername())
                .bio(user.getBio())
                .profilePicture(user.getProfilePicture())
                .build();
    }

    public User getLoggedInUser() {
        return userRepo.findByUsername(
                ((User) SecurityContextHolder
                        .getContext()
                        .getAuthentication()
                        .getPrincipal()
                ).getUsername()
        ).orElseThrow(() -> new RuntimeException("User not found"));
    }
}
