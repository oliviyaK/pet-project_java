package org.kustova.refrigerators.converter;

import org.kustova.refrigerators.DTO.RefrigeratorDTO;
import org.kustova.refrigerators.entity.Refrigerator;

import java.util.List;

public interface RefrigeratorConverter {
    RefrigeratorDTO toDTO (Refrigerator refrigerator);
    List<RefrigeratorDTO> toListDTO (List<Refrigerator> refrigerators);
    Refrigerator toEntity (RefrigeratorDTO refrigeratorDTO);

}
