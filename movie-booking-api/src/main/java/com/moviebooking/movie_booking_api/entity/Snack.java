package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.math.BigDecimal;

@Entity
@Table(name = "snack")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Snack extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "snack_id")
    private Integer snackId;

    @Column(name = "snack_name", length = 500, nullable = false)
    private String snackName;

    @Column(name = "snack_price", precision = 10, scale = 2, nullable = false)
    private BigDecimal snackPrice;
}
