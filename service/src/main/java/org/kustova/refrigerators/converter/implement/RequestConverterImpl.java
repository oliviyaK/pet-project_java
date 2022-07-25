package org.kustova.refrigerators.converter.implement;

import org.kustova.refrigerators.Entity.Request;
import org.kustova.refrigerators.DTO.RequestDTO;
import org.kustova.refrigerators.converter.RequestConverter;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

public class RequestConverterImpl implements RequestConverter {

    @Override
    public RequestDTO toDTO(Request request) {
        return RequestDTO.builder()
                .id(request.getId())
                .date(String.valueOf(request.getDate()))
                .finalDate(request.getFinalDate())
                .requestType(request.getRequestType())
                .comment(request.getComment())
                .price(request.getPrice())
                .refrigerator(request.getRefrigerator())
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
                .date(LocalDate.parse(requestDTO.getDate()))
                .finalDate(requestDTO.getFinalDate())
                .requestType(requestDTO.getRequestType())
                .comment(requestDTO.getComment())
                .price(requestDTO.getPrice())
                .client(requestDTO.getClient())
                .refrigerator(requestDTO.getRefrigerator())
                .build();
    }
}
