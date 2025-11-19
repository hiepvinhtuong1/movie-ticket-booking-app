package com.moviebooking.movie_booking_api.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "age_rating")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class AgeRating extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "age_rating_id")
    private Integer ageRatingId;

    @Column(name = "rating_code", length = 10, nullable = false, unique = true)
    private String ratingCode;

    @Column(name = "rating_description", length = 500)
    private String ratingDescription;
}
