package com.bitsu.social_media.repository;

import com.bitsu.social_media.model.Reaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ReactionRepo extends JpaRepository<Reaction, Integer> {
}
