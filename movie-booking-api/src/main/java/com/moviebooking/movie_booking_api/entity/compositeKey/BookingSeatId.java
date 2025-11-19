package com.moviebooking.movie_booking_api.entity.compositeKey;

import jakarta.persistence.Embeddable;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

// Class đại diện cho khóa phức hợp
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingSeatId implements Serializable {
    private Integer bookingId;
    private Integer seatId;
}
