package com.moviebooking.movie_booking_api.entity;


import com.moviebooking.movie_booking_api.entity.compositeKey.MovieGenreId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

@Entity
@Table(name = "movie_genre")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieGenre  extends BaseEntity{

    @EmbeddedId
    private MovieGenreId id;

    // Quan hệ ManyToOne với Genre
    @MapsId("genreId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "genre_id", insertable = false, updatable = false)
    private Genre genre;

    // Quan hệ ManyToOne với Movie
    @MapsId("movieId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", insertable = false, updatable = false)
    private Movie movie;
}
