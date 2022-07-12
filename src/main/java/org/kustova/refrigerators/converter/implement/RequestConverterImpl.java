package org.kustova.refrigerators.converter.implement;

import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.converter.RequestConverter;
import org.kustova.refrigerators.entity.Request;

import java.util.List;
import java.util.stream.Collectors;

public class RequestConverterImpl implements RequestConverter {


    @Override
    public RequestDTO toDTO(Request request) {
        return RequestDTO.builder()
                .id(request.getId())
                .date(request.getDate())
                .requestType(request.getRequestType())
                .build();
    }

    @Override
    public List<RequestDTO> toListDTO(List<Request> requests) {
        return requests.stream().map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Request toEntity(RequestDTO requestDTO) {
        return Request.builder()
                .id(requestDTO.getId())
                .date(requestDTO.getDate())
                .requestType(requestDTO.getRequestType())
                .build();
    }
}
