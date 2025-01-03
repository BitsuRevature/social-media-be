package com.bitsu.social_media.utility;

import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.UserRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.context.SecurityContextHolder;

@RequiredArgsConstructor
@Configuration
public class Utility {
    private final UserRepo userRepo;

    public User getLoggedInUser() {
        return userRepo.findByUsername(
                ((User) SecurityContextHolder
                        .getContext()
                        .getAuthentication()
                        .getPrincipal()
                ).getUsername()
        ).orElseThrow(() -> new RuntimeException("User not found ** change for testing webhook **"));
    }
}
