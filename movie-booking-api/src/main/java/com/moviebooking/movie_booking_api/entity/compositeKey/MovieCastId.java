package com.moviebooking.movie_booking_api.entity.compositeKey;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

// Class đại diện cho khóa phức hợp MovieCastId
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class MovieCastId implements Serializable {
    @Column(name = "cast_member_id")
    private Integer castMemberId;

    @Column(name = "movie_id")
    private Integer movieId;
}
