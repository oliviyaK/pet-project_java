package org.kustova.refrigerators.repository;

import org.kustova.refrigerators.entity.Refrigerator;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RefrigeratorRepository extends JpaRepository<Refrigerator, Integer> {
}
