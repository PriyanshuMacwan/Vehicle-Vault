package com.grownited.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.grownited.entity.CarEntity;

@Repository
public interface CarRepository extends JpaRepository<CarEntity, Integer> {
	
	//  @Query(value="select ")
	
}
