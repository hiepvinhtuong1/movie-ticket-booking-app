package com.moviebooking.movie_booking_api.entity;


import com.moviebooking.movie_booking_api.entity.compositeKey.MovieCastId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

@Entity
@Table(name = "movie_cast")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieCast extends BaseEntity {

    @EmbeddedId
    private MovieCastId id;

    // Quan hệ ManyToOne với CastMember
    @MapsId("castMemberId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cast_member_id", insertable = false, updatable = false)
    private CastMember castMember;

    // Quan hệ ManyToOne với Movie
    @MapsId("movieId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movie_id", insertable = false, updatable = false)
    private Movie movie;
}
