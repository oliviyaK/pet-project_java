package org.kustova.refrigerators.converter;

import org.kustova.refrigerators.DTO.DetailDTO;
import org.kustova.refrigerators.entity.Detail;

import java.util.List;

public interface DetailConverter {
    DetailDTO toDTO (Detail detail);
    List <DetailDTO> toListDto (List<Detail> details);
    Detail toEntity (DetailDTO detailDTO);
}
