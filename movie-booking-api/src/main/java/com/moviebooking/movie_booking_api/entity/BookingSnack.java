package com.moviebooking.movie_booking_api.entity;

import com.moviebooking.movie_booking_api.entity.compositeKey.BookingSnackId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "booking_snack")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingSnack extends BaseEntity {

    @EmbeddedId
    private BookingSnackId id;

    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    // Quan hệ ManyToOne với Booking
    @MapsId("bookingId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "booking_id", insertable = false, updatable = false)
    private Booking booking;

    // Quan hệ ManyToOne với Snack
    @MapsId("snackId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "snack_id", insertable = false, updatable = false)
    private Snack snack;
}
