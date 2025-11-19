package com.moviebooking.movie_booking_api.entity.compositeKey;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

// Class đại diện cho khóa phức hợp BookingSnackId
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingSnackId implements Serializable {
    private Integer bookingId;
    private Integer snackId;
}
