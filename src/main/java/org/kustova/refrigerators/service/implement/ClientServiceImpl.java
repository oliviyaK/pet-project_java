package org.kustova.refrigerators.service.implement;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.ClientDTO;
import org.kustova.refrigerators.converter.ClientConverter;
import org.kustova.refrigerators.converter.implement.ClientConverterImpl;
import org.kustova.refrigerators.entity.Client;
import org.kustova.refrigerators.entity.Request;
import org.kustova.refrigerators.repository.ClientRepository;
import org.kustova.refrigerators.repository.RequestRepository;
import org.kustova.refrigerators.service.ClientService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ClientServiceImpl implements ClientService {
    private final ClientConverter clientConverter = new ClientConverterImpl();
    private final ClientRepository clientRepository;
    private final RequestRepository requestRepository;

    @Override
    public List<ClientDTO> findAllClients() {
        List<Client> clients = clientRepository.findAll();
        return clientConverter.toListDto(clients);
    }

    @Override
    public Client saveClient(ClientDTO client) {
        return clientRepository.save(clientConverter.toEntity(client));
    }

    @Override
    public ClientDTO findClientById(Integer id) {
        return clientConverter.toDTO(clientRepository.findById(id).orElse(null));
    }

    @Override
    public void deleteClient(Integer id) {
        clientRepository.deleteById(id);
    }

    @Override
    public List<Request> findRequest(Integer id) {
        return requestRepository.findRequestFromClient(id);
    }
}
