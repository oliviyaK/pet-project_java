package org.kustova.refrigerators.repository;

import org.kustova.refrigerators.Entity.Request;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RequestRepository extends JpaRepository<Request, Integer> {
    @Query("from Request where client.id like :id")
    List<Request> findRequestFromClient(@Param("id") Integer id);
}
