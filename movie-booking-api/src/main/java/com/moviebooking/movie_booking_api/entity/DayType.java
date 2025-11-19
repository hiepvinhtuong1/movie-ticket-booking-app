package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "day_type")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DayType extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "day_type_id")
    private Integer dayTypeId;

    @Column(name = "type_name", length = 50, nullable = false, unique = true)
    private String typeName;
}
