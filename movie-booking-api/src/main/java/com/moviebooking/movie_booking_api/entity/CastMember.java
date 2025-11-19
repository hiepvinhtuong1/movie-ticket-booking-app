package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "cast_member")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CastMember extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cast_id")
    private Integer castId;

    @Column(name = "cast_name", length = 500, nullable = false)
    private String castName;
}
