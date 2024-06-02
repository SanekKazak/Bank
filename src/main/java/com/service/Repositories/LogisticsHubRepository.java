package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.service.Models.LogisticsHub;

@Repository
public interface LogisticsHubRepository extends JpaRepository<LogisticsHub, Long> {
    
}