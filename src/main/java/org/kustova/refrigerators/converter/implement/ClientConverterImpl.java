package org.kustova.refrigerators.converter.implement;

import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.converter.ClientConverter;
import org.kustova.refrigerators.entity.Client;
import org.kustova.refrigerators.entity.Request;

import java.util.List;
import java.util.stream.Collectors;

public class ClientConverterImpl implements ClientConverter {

    @Override
    public ClientDTO toDTO(Client client) {
        return ClientDTO.builder()
                .id(client.getId())
                .name(client.getName())
                .surname(client.getSurname())
                .phone(client.getPhone())
                .address(client.getAddress())
                .comment(client.getComment())
//                .requestOfClientDate(client.getRequestOfClient().stream().map(Request::getDate).collect(Collectors.joining(", ")))
//                .requestOfClientType(client.getRequestOfClient().stream().map(Request::getRequestType).collect(Collectors.joining(", ")))
                .build();
    }

    @Override
    public List<ClientDTO> toListDto(List<Client> clients) {
        return clients.stream().map(client -> ClientDTO.builder()
                        .id(client.getId())
                        .name(client.getName())
                        .surname(client.getSurname())
                        .phone(client.getPhone())
                        .address(client.getAddress())
                        .comment(client.getComment())
//                        .requestOfClientDate(client.getRequestOfClient().stream().map(Request::getDate).collect(Collectors.joining(", ")))
//                        .requestOfClientType(client.getRequestOfClient().stream().map(Request::getRequestType).collect(Collectors.joining(", ")))
                        .build())
                .collect(Collectors.toList());
    }

    @Override
    public Client toEntity(ClientDTO clientDTO) {
        return Client.builder()
                .id(clientDTO.getId())
                .name(clientDTO.getName())
                .surname(clientDTO.getSurname())
                .phone(clientDTO.getPhone())
                .address(clientDTO.getAddress())
                .comment(clientDTO.getComment())
                .build();
    }
}

