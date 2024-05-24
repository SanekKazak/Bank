package com.service.Controllers;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.service.Models.LogisticsHub;
import com.service.Repositories.LogisticsHubRepository;

@RestController
@RequestMapping("/api/logistics-hub")
public class LogisticsHubController extends AbstractController<LogisticsHub, Long> {

    public LogisticsHubController(LogisticsHubRepository repository) {
        super(repository);
    }
}