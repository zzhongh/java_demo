package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/hello")
@RestController()
public class HelloWorldController {

    @GetMapping("test")
    public String index() {
        return "Hello World";
    }
}
