package com.service.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.Models.Driver;
import com.service.Repositories.DriverRepository;

@RestController
@RequestMapping("/api/driver")
public class DriverController extends AbstractController<Driver, Long> {

    public DriverController(DriverRepository repository) {
        super(repository);
    }
}