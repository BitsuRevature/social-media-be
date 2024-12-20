package com.bitsu.social_media.repository;

import com.bitsu.social_media.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PostRepo extends JpaRepository<Post, Integer>{

    public List<Post> findAllByOrderByCreatedAtDesc();

    public List<Post> findAllByContentContains(String search);

}
