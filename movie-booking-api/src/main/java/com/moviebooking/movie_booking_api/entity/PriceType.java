package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "price_type")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class PriceType extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "price_type_id")
    private Integer priceTypeId;

    @Column(name = "type_name", length = 50, nullable = false, unique = true)
    private String typeName;
}
