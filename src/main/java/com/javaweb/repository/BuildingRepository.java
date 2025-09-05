package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.tools.JavaCompiler;

public interface BuildingRepository extends JpaRepository<BuildingEntity, Long> {
}
