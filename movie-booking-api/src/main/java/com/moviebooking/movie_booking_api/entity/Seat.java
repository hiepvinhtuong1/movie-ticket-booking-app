package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "seat")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Seat extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "seat_id")
    private Integer seatId;

    // Đã thay thế seat_location bằng row và number
    @Column(name = "row", length = 5, nullable = false)
    private String row; // Tên hàng (ví dụ: A, B, VIP)

    @Column(name = "number", nullable = false)
    private Integer number; // Số ghế trong hàng (ví dụ: 1, 2, 10)

    // FK: seat_type_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seat_type_id", nullable = false)
    private SeatType seatType;

    // FK: theater_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "theater_id", nullable = false)
    private Theater theater;
}
