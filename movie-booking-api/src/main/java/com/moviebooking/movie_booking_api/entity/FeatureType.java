package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "feature_type")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class FeatureType extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "feature_type_id")
    private Integer featureTypeId;

    @Column(name = "feature_type_name", length = 500, nullable = false)
    private String featureTypeName;
}
