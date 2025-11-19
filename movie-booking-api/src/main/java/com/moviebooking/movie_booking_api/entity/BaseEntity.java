package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.time.Instant;

@Getter
@Setter
@MappedSuperclass
public class BaseEntity implements Serializable {
    @Column(nullable = false, updatable = false)
    protected Instant createAt;

    @Column(nullable = false)
    protected Instant updateAt;

    @PrePersist
    protected void onCreate() {
        Instant now = Instant.now();
        this.createAt = now;
        this.updateAt = now;
    }

    @PreUpdate
    protected void onUpdate() {
        this.updateAt = Instant.now();
    }
}

