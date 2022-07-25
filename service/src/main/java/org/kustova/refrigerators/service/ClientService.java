package org.kustova.refrigerators.service;

import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.Entity.Request;
import org.springframework.data.domain.Page;

import java.util.List;

public interface ClientService {
    List<ClientDTO> findAllClients();

    void saveClient(ClientDTO client);

    ClientDTO findClientById(Integer id);

    void deleteClient(Integer id);

    List<Request> findRequest(Integer id);

    Page<ClientDTO> findField(String name, String field, String direction, int pageNumber, int pageSize);
}
