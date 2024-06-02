package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.service.Models.Transportation;

@Repository
public interface TransportationRepository extends JpaRepository<Transportation, Long> {
    Long countByOriginLogisticsHubId(Long id);
    Long countByDestinationLogisticsHubId(Long id);
}