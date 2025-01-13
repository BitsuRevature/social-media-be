package com.bitsu.social_media.repository;

import com.bitsu.social_media.model.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepo extends JpaRepository<User, Integer> {
    Optional<User> findByUsername(String username);

    Page<User> findAllByUsernameContainsAndUsernameNot(String search, String username, Pageable pageable);

    Page<User> findAllByUsernameNot(String username, Pageable pageable);

    @Query(
        value="SELECT f FROM User u JOIN u.following f WHERE u.id = :currentUserID",
        countQuery = "SELECT COUNT(f) FROM User u JOIN u.following f WHERE u.id = :currentUserID"
    )
    Page<User> findAllFollowingUser(@Param("currentUserID")int currentUserID, Pageable pageable);

    @Query(
        value="SELECT f FROM User u JOIN u.following f WHERE u.id = :currentUserID AND f.username LIKE %:search%",
        countQuery = "SELECT COUNT(f) FROM User u JOIN u.following f WHERE u.id = :currentUserID"
    )
    Page<User> findAllFollowingUser(@Param("currentUserID") int currentUserID, @Param("search")String search, Pageable pageable);

    @Query("SELECT u FROM User u JOIN u.following f WHERE f.id = :currentUserID")
    Page<User> findFollowers(@Param("currentUserID") int currentUserID, Pageable pageable);

    @Query("SELECT u FROM User u JOIN u.following f WHERE f.id = :currentUserID AND u.username LIKE %:search%")
    Page<User> findFollowers(@Param("currentUserID") int currentUserID, @Param("search") String search, Pageable pageable);
}
