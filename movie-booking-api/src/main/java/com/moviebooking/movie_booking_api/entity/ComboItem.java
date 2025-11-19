package com.moviebooking.movie_booking_api.entity;

import com.moviebooking.movie_booking_api.entity.compositeKey.ComboItemId;
import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;

@Entity
@Table(name = "combo_item")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ComboItem extends BaseEntity {

    @EmbeddedId
    private ComboItemId id;

    @Column(name = "quantity", nullable = false)
    private Integer quantity;

    // Quan hệ ManyToOne với Combo
    @MapsId("comboId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "combo_id", insertable = false, updatable = false)
    private Combo combo;

    // Quan hệ ManyToOne với Snack
    @MapsId("snackId")
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "snack_id", insertable = false, updatable = false)
    private Snack snack;
}
