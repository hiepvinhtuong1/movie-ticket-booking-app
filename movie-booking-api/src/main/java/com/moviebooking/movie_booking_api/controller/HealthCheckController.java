package com.moviebooking.movie_booking_api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1")
public class HealthCheckController {

    @GetMapping("/hello")
    public String sayHello() {
        return "Hello from Movie Booking API! Swagger should be working now.";
    }
}
