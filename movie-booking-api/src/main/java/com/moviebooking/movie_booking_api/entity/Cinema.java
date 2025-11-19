package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "cinema")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Cinema extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "cinema_id")
    private Integer cinemaId;

    @Column(name = "cinema_name", length = 500, nullable = false)
    private String cinemaName;

    @Column(name = "street_address", length = 2000)
    private String streetAddress;

    @Column(name = "main_image_url", length = 2000)
    private String mainImageUrl;

    @Column(name = "secondary_image_url", length = 2000)
    private String secondaryImageUrl;

    // FK: province_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "province_id", nullable = false)
    private Province province;

    // FK: district_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "district_id", nullable = false)
    private District district;

    // FK: wards_id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "wards_id")
    private Wards wards;
}
