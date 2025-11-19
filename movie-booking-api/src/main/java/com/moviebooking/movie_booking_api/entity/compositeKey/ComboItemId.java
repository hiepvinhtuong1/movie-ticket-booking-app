package com.moviebooking.movie_booking_api.entity.compositeKey;


import jakarta.persistence.*;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.io.Serializable;

// Class đại diện cho khóa phức hợp ComboItemId
@Embeddable
@Data
@NoArgsConstructor
@AllArgsConstructor
public class ComboItemId implements Serializable {
    @Column(name = "combo_id")
    private Integer comboId;

    @Column(name = "snack_id")
    private Integer snackId;
}
