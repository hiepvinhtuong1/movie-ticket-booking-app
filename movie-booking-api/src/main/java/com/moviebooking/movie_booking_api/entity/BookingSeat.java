package com.moviebooking.movie_booking_api.entity;

import com.moviebooking.movie_booking_api.entity.compositeKey.BookingSeatId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.math.BigDecimal;



@Entity
@Table(name = "booking_seat")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingSeat extends BaseEntity {

    // Khóa phức hợp (EmbeddedId)
    @EmbeddedId
    private BookingSeatId id;

    @Column(name = "price", precision = 10, scale = 2, nullable = false)
    private BigDecimal price;

    // Quan hệ ManyToOne với Booking (một phần của khóa phức hợp)
    @MapsId("bookingId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "booking_id", insertable = false, updatable = false)
    private Booking booking;

    // Quan hệ ManyToOne với Seat (một phần của khóa phức hợp)
    @MapsId("seatId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seat_id", insertable = false, updatable = false)
    private Seat seat;
}
