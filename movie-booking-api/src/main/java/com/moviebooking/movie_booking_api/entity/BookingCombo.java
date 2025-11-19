package com.moviebooking.movie_booking_api.entity;


import com.moviebooking.movie_booking_api.entity.compositeKey.BookingComboId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.math.BigDecimal;


@Entity
@Table(name = "booking_combo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingCombo extends BaseEntity {

    @EmbeddedId
    private BookingComboId id;

    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    @Column(name = "sub_total", precision = 10, scale = 2, nullable = false)
    private BigDecimal subTotal;

    // Quan hệ ManyToOne với Booking
    @MapsId("bookingId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "booking_id", insertable = false, updatable = false)
    private Booking booking;

    // Quan hệ ManyToOne với Combo
    @MapsId("comboId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "combo_id", insertable = false, updatable = false)
    private Combo combo;
}
