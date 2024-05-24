package com.service.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.Models.Transport;
import com.service.Repositories.TransportRepository;

@RestController
@RequestMapping("/api/transport")
public class TransportController extends AbstractController<Transport, Long> {

    public TransportController(TransportRepository repository) {
        super(repository);
    }
}