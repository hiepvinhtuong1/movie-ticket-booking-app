package com.moviebooking.movie_booking_api.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.time.LocalDate;
import java.util.Set;

@Entity
@Table(name = "movie")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Movie extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "movie_id")
    private Integer movieId;

    @Column(name = "title", length = 200, nullable = false)
    private String title;

    @Column(name = "runtime_min", nullable = false)
    private Integer runtimeMin;

    @Column(name = "release_date", nullable = false)
    private LocalDate releaseDate;

    @Column(name = "trailer_link", length = 1000, nullable = false)
    private String trailerLink;

    @Column(name = "description", length = 2000, nullable = false)
    private String description;

    @Column(name = "banner_text", length = 1000, nullable = false)
    private String bannerText;

    @Column(name = "header_image", length = 1000, nullable = false)
    private String headerImage;

    @Column(name = "poster_image", length = 1000, nullable = false)
    private String posterImage;

    @Column(name = "synopsis", length = 4000, nullable = false)
    private String synopsis;

    // FK: age_rating_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "age_rating_id", nullable = false)
    private AgeRating ageRating;

    // FK: director_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "director_id", nullable = false)
    private Director director;

    // FK: movie_status_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_status_id", nullable = false)
    private MovieStatus movieStatus;

    // Quan hệ Many-to-Many với Genre
    @ManyToMany
    @JoinTable(
            name = "movie_genre",
            joinColumns = @JoinColumn(name = "movie_id"),
            inverseJoinColumns = @JoinColumn(name = "genre_id")
    )
    private Set<Genre> genres;

    // Quan hệ Many-to-Many với CastMember (cần tạo Entity Genre và CastMember)
}
