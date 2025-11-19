package com.moviebooking.movie_booking_api.entity.compositeKey;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;
import java.math.BigDecimal;

// Class đại diện cho khóa phức hợp BookingComboId
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingComboId implements Serializable {
    private Integer bookingId;
    private Integer comboId;
}
