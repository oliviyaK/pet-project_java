package org.kustova.refrigerators.converter;

import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.entity.Client;
import java.util.List;

public interface ClientConverter {
    ClientDTO toDTO(Client client);
    List<ClientDTO> toListDto(List<Client> clients);
    Client toEntity (ClientDTO clientDTO);
}
