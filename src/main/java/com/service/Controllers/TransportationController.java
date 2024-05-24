package com.service.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.Models.Transportation;
import com.service.Repositories.TransportationRepository;

@RestController
@RequestMapping("/api/transportation")
public class TransportationController extends AbstractController<Transportation, Long> {

    public TransportationController(TransportationRepository repository) {
        super(repository);
    }
}