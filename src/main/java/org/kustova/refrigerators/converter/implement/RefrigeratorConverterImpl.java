package org.kustova.refrigerators.converter.implement;

import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.converter.RefrigeratorConverter;
import org.kustova.refrigerators.entity.Refrigerator;

import java.util.List;
import java.util.stream.Collectors;

public class RefrigeratorConverterImpl implements RefrigeratorConverter {
    @Override
    public RefrigeratorDTO toDTO(Refrigerator refrigerator) {
        return RefrigeratorDTO.builder()
                .id(refrigerator.getId())
                .brand(refrigerator.getBrand())
                .model(refrigerator.getModel())
                .comment(refrigerator.getComment())
                .build();
    }

    @Override
    public List<RefrigeratorDTO> toListDTO(List<Refrigerator> refrigerators) {
        return refrigerators.stream().map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Refrigerator toEntity(RefrigeratorDTO refrigeratorDTO) {
        return Refrigerator.builder()
                .id(refrigeratorDTO.getId())
                .brand(refrigeratorDTO.getBrand())
                .model(refrigeratorDTO.getModel())
                .comment(refrigeratorDTO.getComment())
                .build();
    }
}
