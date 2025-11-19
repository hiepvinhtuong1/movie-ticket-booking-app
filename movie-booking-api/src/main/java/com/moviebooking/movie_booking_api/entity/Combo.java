package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.math.BigDecimal;

@Entity
@Table(name = "combo")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Combo extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "combo_id")
    private Integer comboId;

    @Column(name = "combo_name", length = 500, nullable = false)
    private String comboName;

    @Column(name = "price", precision = 10, scale = 2, nullable = false)
    private BigDecimal price;

    @Column(name = "description", length = 2000)
    private String description;

    @Column(name = "image_url", length = 2000)
    private String imageUrl;
}
