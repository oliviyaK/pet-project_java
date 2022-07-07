package org.kustova.refrigerators.converter;

import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.entity.Request;

import java.util.List;

public interface RequestConverter {
    RequestDTO toDTO(Request request);
    List<RequestDTO> toListDTO (List<Request> requests);
    Request toEntity (RequestDTO requestDTO);

}
