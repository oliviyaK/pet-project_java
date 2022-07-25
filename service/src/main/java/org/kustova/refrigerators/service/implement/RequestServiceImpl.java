package org.kustova.refrigerators.service.implement;

import lombok.RequiredArgsConstructor;
import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.Entity.Request;
import org.kustova.refrigerators.converter.RequestConverter;
import org.kustova.refrigerators.converter.implement.RequestConverterImpl;
import org.kustova.refrigerators.repository.RequestRepository;
import org.kustova.refrigerators.service.RequestService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class RequestServiceImpl implements RequestService {
    private final RequestConverter requestConverter = new RequestConverterImpl();
    private final RequestRepository requestRepository;

    @Override
    public List<RequestDTO> findAllRequests() {
        List<Request> requests = requestRepository.findAll();
        return requestConverter.toListDTO(requests);
    }

    @Override
    public void saveRequest(RequestDTO request) {
        requestRepository.save(requestConverter.toEntity(request));
    }

    @Override
    public RequestDTO findRequestById(Integer id) {
        return requestConverter.toDTO(requestRepository.findById(id).orElse(null));
    }

    @Override
    public void deleteRequest(Integer id) {
        requestRepository.deleteById(id);
    }


}
