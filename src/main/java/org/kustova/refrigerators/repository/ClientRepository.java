package org.kustova.refrigerators.repository;

import org.kustova.refrigerators.entity.Client;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {

    @Query("select client  from Client client where " +
            "concat(client.surname,client.name)like %?1%")
    Page<Client> findField(String surname, Pageable pageable);
}
