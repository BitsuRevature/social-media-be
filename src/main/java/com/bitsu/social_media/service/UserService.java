package com.bitsu.social_media.service;

import com.bitsu.social_media.dto.UserBioInfo;
import com.bitsu.social_media.dto.UserPIInfo;
import com.bitsu.social_media.dto.UserProfilePic;
import com.bitsu.social_media.dto.UserResponse;
import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.UserRepo;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepo userRepo;

    public UserResponse mapToUserResponse(User user) {
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
        ).orElseThrow(() -> new RuntimeException("User not found ** change for testing webhook **"));
    }

    public void updatePI(UserPIInfo userPIInfo) {
        User user = getLoggedInUser();
        user.setFirstname(userPIInfo.getFirstname());
        user.setLastname(userPIInfo.getLastname());
        userRepo.save(user);
    }

    public void updateBio(UserBioInfo userBioInfo) {
        User user = getLoggedInUser();
        user.setBio(userBioInfo.getBio());
        userRepo.save(user);
    }

    public void updateProfilePic(UserProfilePic userProfilePic) {
        User user = getLoggedInUser();
        user.setProfilePicture(userProfilePic.getProfilePicture());
        userRepo.save(user);
    }

    public List<UserResponse> getUsers(String search) {
        if (search == null || search.isBlank()) {
            return userRepo.findAll().stream()
                    .map(this::mapToUserResponse)
                    .toList();
        }
        return userRepo.findAllByUsernameContains(search).stream()
                .map(this::mapToUserResponse)
                .toList();
    }

    public List<UserResponse> getFollowing(String search) {
        if (search == null || search.isBlank()) {
            return getLoggedInUser().getFollowers().stream()
                    .map(this::mapToUserResponse)
                    .toList();
        }
        return getLoggedInUser().getFollowers().stream()
                .filter(user -> user.getUsername().contains(search))
                .map(this::mapToUserResponse)
                .toList();
    }

    public void unfollow(int id) {
        User user = getLoggedInUser();
        User userToUnfollow = userRepo.findById(id).orElseThrow(() -> new RuntimeException("User to unfollow not found"));
        user.getFollowers().remove(userToUnfollow);
        userRepo.save(user);
    }

    public void follow(int id) {
        User user = getLoggedInUser();
        User userToFollow = userRepo.findById(id).orElseThrow(() -> new RuntimeException("User to follow not found"));
        user.getFollowers().add(userToFollow);
        userRepo.save(user);
    }
}
