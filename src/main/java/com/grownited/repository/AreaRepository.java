package com.grownited.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.grownited.entity.AreaEntity;


@Repository
public interface AreaRepository extends JpaRepository<AreaEntity, Integer> {

	public Optional<AreaEntity> findByAreaName(String areaName);
	
} 