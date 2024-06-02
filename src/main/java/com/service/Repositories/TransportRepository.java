package com.service.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.service.Models.Transport;

@Repository
public interface TransportRepository extends JpaRepository<Transport, Long> {
    
}