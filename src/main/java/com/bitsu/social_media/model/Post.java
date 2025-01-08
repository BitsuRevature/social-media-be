package com.bitsu.social_media.model;

import java.time.LocalDateTime;
import java.util.List;

import jakarta.persistence.*;
import org.hibernate.annotations.CreationTimestamp;

import com.fasterxml.jackson.annotation.JsonBackReference;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "post")
public class Post {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int Id;

    private String content;
    private String mediaURL;

    @CreationTimestamp
    private LocalDateTime createdAt;

    @ManyToOne
    @JsonBackReference
    private User user;

    @OneToMany(
            fetch = FetchType.LAZY, cascade = CascadeType.REMOVE
    )
    @JoinColumn(name = "post_id")
    private List<Comment> comments;

    @OneToMany(
            fetch = FetchType.LAZY, cascade = CascadeType.REMOVE
    )
    @JoinColumn(name = "post_id")
    private List<Reaction> reactions;
    
}
