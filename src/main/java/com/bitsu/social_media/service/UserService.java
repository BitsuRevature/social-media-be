package com.bitsu.social_media.service;

import com.bitsu.social_media.dto.*;
import com.bitsu.social_media.exception.NotFoundException;
import com.bitsu.social_media.model.Post;
import com.bitsu.social_media.model.User;
import com.bitsu.social_media.repository.UserRepo;
import com.bitsu.social_media.utility.Utility;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

    private final UserRepo userRepo;
    private final S3Service s3Service;
    private final Utility utility;
    public void updatePI(UserPIInfo userPIInfo) {
        User user = utility.getLoggedInUser();
        user.setFirstname(userPIInfo.getFirstname());
        user.setLastname(userPIInfo.getLastname());
        userRepo.save(user);
    }

    public void updateBio(UserBioInfo userBioInfo) {
        User user = utility.getLoggedInUser();
        user.setBio(userBioInfo.getBio());
        userRepo.save(user);
    }

    public void updateProfilePic(UserProfilePic userProfilePic) {
        User user = utility.getLoggedInUser();
        if(userProfilePic.getProfilePicture() != null && !userProfilePic.getProfilePicture().isBlank()){
            s3Service.deleteImageFromBucket(user.getProfilePicture());
            user.setProfilePicture(userProfilePic.getProfilePicture());
        }
        userRepo.save(user);
    }

    public UserProfileResponse getUser(String username) {
        User user = userRepo.findByUsername(username).orElseThrow(() -> new NotFoundException("User not found"));
        List<Post> posts = user.getPosts();
        Collections.reverse(posts);
        return UserProfileResponse.builder()
            .id(user.getId())
            .firstname(user.getFirstname())
            .lastname(user.getLastname())
            .username(user.getUsername())
            .bio(user.getBio())
            .profilePicture(user.getProfilePicture())
            .posts(posts.stream().map(utility::mapToPostResponse).toList())
            .build();
    }

    public PagedUser getUsers(String search, int page, int size, String sortBy, boolean ascending) {

        Sort sort = ascending ? Sort.by(sortBy).ascending() : Sort.by(sortBy).descending();
        Pageable pageable = PageRequest.of(page, size, sort);

        if (search == null || search.isBlank()) {
            var usersPageable = userRepo.findAll(pageable);
            return PagedUser.builder()
                    .users(usersPageable.getContent().stream().map(utility::mapToUserResponse).toList())
                    .hasNext(usersPageable.hasNext())
                    .currentPage(usersPageable.getNumber())
                    .totalPages(usersPageable.getTotalPages())
                    .size(usersPageable.getSize())
                    .build();
        }
        var usersPageable = userRepo.findAllByUsernameContains(search, pageable);
        return PagedUser.builder()
                .users(usersPageable.getContent().stream().map(utility::mapToUserResponse).toList())
                .hasNext(usersPageable.hasNext())
                .currentPage(usersPageable.getNumber())
                .totalPages(usersPageable.getTotalPages())
                .size(usersPageable.getSize())
                .build();
    }

    public List<UserResponse> getFollowing(String search) {
        if (search == null || search.isBlank()) {
            return utility.getLoggedInUser().getFollowing().stream()
                    .map(utility::mapToUserResponse)
                    .toList();
        }
        return utility.getLoggedInUser().getFollowing().stream()
                .filter(user -> user.getUsername().contains(search))
                .map(utility::mapToUserResponse)
                .toList();
    }

    public List<UserResponse> getFollowers(String search) {
        if (search == null || search.isBlank()) {
            return userRepo.findFollowers(utility.getLoggedInUser().getId()).stream()
                .map(utility::mapToUserResponse)
                .toList();
        }
        return userRepo.findFollowers(utility.getLoggedInUser().getId()).stream()
                .filter(user -> user.getUsername().contains(search))
                .map(utility::mapToUserResponse)
                .toList();
    }

    public void unfollow(int id) {
        User user = utility.getLoggedInUser();
        User userToUnfollow = userRepo.findById(id).orElseThrow(() -> new NotFoundException("User to unfollow not found"));
        user.getFollowing().remove(userToUnfollow);
        userRepo.save(user);
    }

    public void follow(int id) {
        User user = utility.getLoggedInUser();
        User userToFollow = userRepo.findById(id).orElseThrow(() -> new NotFoundException("User to follow not found"));
        user.getFollowing().add(userToFollow);
        userRepo.save(user);
    }
}
