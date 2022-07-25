package org.kustova.refrigerators.service;

import org.kustova.refrigerators.DTO.RequestDTO;
import org.springframework.data.domain.Page;

import java.util.Date;
import java.util.List;

public interface RequestService {
    List<RequestDTO> findAllRequests();

    void saveRequest(RequestDTO request);

    RequestDTO findRequestById(Integer id);

    void deleteRequest(Integer id);
}
