package io.github.singhalmradul.highfive.persistence.entities;

import java.time.OffsetDateTime;
import java.util.UUID;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "post")
@Getter
@Setter
@NoArgsConstructor
public class Post {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    UUID id;

    @ManyToOne(cascade = { CascadeType.MERGE, CascadeType.PERSIST, CascadeType.REFRESH }, targetEntity = User.class)
    @JoinColumn(name = "user", nullable = false, referencedColumnName = "id", updatable = false)
    User user;

    @Column(name = "content", nullable = false)
    String content;

    @Column(name = "highfives", nullable = false, columnDefinition = "int default 0")
    int highfives;

    @Column(name = "comments", nullable = false, columnDefinition = "int default 0")
    int comments;

    @Column(name = "shares", nullable = false, columnDefinition = "int default 0")
    int shares;

    @Column(name = "created_at", nullable = false)
    OffsetDateTime createdAt;
}
