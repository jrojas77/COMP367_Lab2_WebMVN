package com.comp367.jrr;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import java.time.LocalTime;

@RestController
public class WelcomeController {

    @GetMapping("/message")
    public String returnMessage() {
        LocalTime currentTime = LocalTime.now();

        String greeting = "";
        if (currentTime.isBefore(LocalTime.NOON)) {
            greeting = "Good morning,";
        } else {
            greeting = "Good afternoon,";
        }

        String studentName = "Josue Rojas Ruiz - 301347343";
        return String.format("%s, %s, Welcome to COMP367", greeting, studentName);
    }
}
