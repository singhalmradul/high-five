package io.github.singhalmradul.persistence.entities;

import java.time.OffsetDateTime;
import java.util.UUID;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "user")
@Getter
@Setter
@NoArgsConstructor
public class User {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.UUID)
    UUID id;

    @Column(name = "username", unique = true, nullable = false)
    String username;

    @Column(name = "password_hash", nullable = false)
    String passwordHash;

    @Column(name = "email", unique = true, nullable = false)
    String email;

    @Column(name = "first_name", nullable = false)
    String firstName;

    @Column(name = "last_name", nullable = false)
    String lastName;

    @Column(name = "bio")
    String bio;

    @Column(name = "profile_picture_url")
    String profilePictureUrl;

    @Column(name = "cover_picture_url")
    String coverPictureUrl;

    @Column(name = "location")
    String location;

    @Column(name = "website")
    String website;

    @Column(name = "phone_number")
    String phoneNumber;

    @Column(name = "created_at", nullable = false)
    OffsetDateTime createdAt;

    @Column(name = "updated_at", nullable = false)
    OffsetDateTime updatedAt;

    @Column(name = "last_login_at")
    OffsetDateTime lastLoginAt;

    @Column(name = "last_logout_at")
    OffsetDateTime lastLogoutAt;

    @Column(name = "is_private", nullable = false, columnDefinition = "boolean default false")
    boolean isPrivate;

    @Column(name = "is_deleted", nullable = false, columnDefinition = "boolean default false")
    boolean isDeleted;

    @Column(name = "is_banned", nullable = false, columnDefinition = "boolean default false")
    boolean isBanned;

    @Column(name = "is_suspended", nullable = false, columnDefinition = "boolean default false")
    boolean isSuspended;

    @Column(name = "is_online", nullable = false, columnDefinition = "boolean default false")
    boolean isOnline;

}
