package com.moviebooking.movie_booking_api.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "booking_status")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BookingStatus extends BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "booking_status_id")
    private Integer bookingStatusId;

    @Column(name = "status_name", length = 50, nullable = false)
    private String statusName;
}
