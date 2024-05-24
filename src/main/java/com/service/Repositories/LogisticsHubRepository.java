package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.service.Models.LogisticsHub;

public interface LogisticsHubRepository extends JpaRepository<LogisticsHub, Long> {
    
}