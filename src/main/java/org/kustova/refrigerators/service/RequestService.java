package org.kustova.refrigerators.service;

import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.entity.Request;

import java.util.List;

public interface RequestService {
    List<RequestDTO> findAllRequests();

    Request saveRequest(RequestDTO request);

    RequestDTO findRequestById(Integer id);

    void deleteRequest(Integer id);


}
