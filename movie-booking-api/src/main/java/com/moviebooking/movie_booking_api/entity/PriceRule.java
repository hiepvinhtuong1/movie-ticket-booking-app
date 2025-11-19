package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.math.BigDecimal;
import java.time.LocalTime;

@Entity
@Table(name = "price_rule")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PriceRule extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rule_id")
    private Integer ruleId;

    @Column(name = "base_price", precision = 10, scale = 2, nullable = false)
    private BigDecimal basePrice;

    @Column(name = "start_time", nullable = false)
    private LocalTime startTime;

    @Column(name = "end_time", nullable = false)
    private LocalTime endTime;

    @Column(name = "is_special_event", nullable = false)
    private Boolean isSpecialEvent; // PostgreSQL 'boolean' maps to Java Boolean/boolean

    // FK: seat_type_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seat_type_id", nullable = false)
    private SeatType seatType;

    // FK: price_type_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "price_type_id", nullable = false)
    private PriceType priceType;

    // FK: day_type_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "day_type_id", nullable = false)
    private DayType dayType;
}
