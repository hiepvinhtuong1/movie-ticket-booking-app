package com.moviebooking.movie_booking_api.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDateTime;

@Entity
@Table(name = "showing_time")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShowingTime extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "showing_time_id")
    private Integer showingTimeId;

    @Column(name = "showing_datetime", nullable = false)
    private LocalDateTime showingDatetime;

    // FK: theater_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "theater_id", nullable = false)
    private Theater theater;

    // FK: movie_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", nullable = false)
    private Movie movie;
}
