package com.service.Controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.service.Models.LogisticsHub;
import com.service.Repositories.LogisticsHubRepository;
import com.service.Repositories.TransportationRepository;
import org.springframework.beans.factory.annotation.Autowired;


@RestController
@RequestMapping("/api/logistics-hub")
public class LogisticsHubController extends AbstractController<LogisticsHub, Long> {

    @Autowired
    TransportationRepository transportationRepository;

    public LogisticsHubController(LogisticsHubRepository repository) {
        super(repository);
    }

    @GetMapping("/{id}/tasks-count")
    public Long getTasksCountByLogisticsHubId(@PathVariable Long id) {
        Long tasksFromOrigin = transportationRepository.countByOriginLogisticsHubId(id);
        Long tasksToDestination = transportationRepository.countByDestinationLogisticsHubId(id);
        return tasksFromOrigin + tasksToDestination;
    }
}