package org.kustova.refrigerators.repository;

import org.kustova.refrigerators.Entity.Refrigerator;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RefrigeratorRepository extends JpaRepository<Refrigerator, Integer> {
}
