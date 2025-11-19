package com.moviebooking.movie_booking_api.entity;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "feature")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Feature extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "feature_id")
    private Integer featureId;

    @Column(name = "feature_name", length = 500, nullable = false)
    private String featureName;

    @Column(name = "feature_description", length = 2000, nullable = false)
    private String featureDescription;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "feature_type_id", nullable = false)
    private FeatureType featureType;
}
