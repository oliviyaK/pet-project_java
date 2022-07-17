package org.kustova.refrigerators.service;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.entity.Client;
import org.kustova.refrigerators.entity.Request;

import java.util.List;

public interface ClientService {
    List<ClientDTO> findAllClients();
    Client saveClient(ClientDTO client);
    ClientDTO findClientById(Integer id);
    void deleteClient(Integer id);
List<Request> findRequest(Integer id);
}
