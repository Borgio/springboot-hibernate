package com.aol.spring.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by ram on 26/02/16.
 */
@RestController
public class HelloController {
    @RequestMapping("/")
    public String index() {
        return "Hello Spring Boot!";
    }
}
