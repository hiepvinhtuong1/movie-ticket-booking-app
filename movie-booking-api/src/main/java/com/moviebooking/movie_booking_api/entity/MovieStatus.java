package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "movie_status")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieStatus extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_status_id")
    private Integer movieStatusId;

    @Column(name = "movie_status_name", length = 500, nullable = false)
    private String movieStatusName;

    @Column(name = "movie_status_description", length = 1000, nullable = false)
    private String movieStatusDescription;
}
