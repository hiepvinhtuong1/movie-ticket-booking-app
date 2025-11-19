package com.moviebooking.movie_booking_api.entity;

import com.moviebooking.movie_booking_api.entity.compositeKey.ShowingFeatureId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;



@Entity
@Table(name = "showing_feature")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ShowingFeature extends BaseEntity {

    @EmbeddedId
    private ShowingFeatureId id;

    // Quan hệ ManyToOne với ShowingTime
    @MapsId("showingTimeId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "showing_time_id", insertable = false, updatable = false)
    private ShowingTime showingTime;

    // Quan hệ ManyToOne với Feature
    @MapsId("featureId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "feature_id", insertable = false, updatable = false)
    private Feature feature;
}
