package com.bitsu.social_media.repository;

import com.bitsu.social_media.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {
    Optional<User> findByUsername(String username);

    List<User> findAllByUsernameContains(String search);
}
