package org.data.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/data")
public class DataController {

    @GetMapping
    public ResponseEntity<String> getData() {
        return ResponseEntity.ok("Hello from Data Service!");
    }
}

