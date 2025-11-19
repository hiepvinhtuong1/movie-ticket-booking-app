package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "director")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Director extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "director_id")
    private Integer directorId;

    @Column(name = "director_name", length = 500, nullable = false)
    private String directorName;
}
