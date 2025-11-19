package com.moviebooking.movie_booking_api.entity.compositeKey;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

// Class đại diện cho khóa phức hợp MovieGenreId
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieGenreId implements Serializable {
    @Column(name = "genre_id")
    private Integer genreId;

    @Column(name = "movie_id")
    private Integer movieId;
}
