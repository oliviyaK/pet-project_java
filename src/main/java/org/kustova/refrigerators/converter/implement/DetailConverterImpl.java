package org.kustova.refrigerators.converter.implement;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.kustova.refrigerators.DTO.DetailDTO;
import org.kustova.refrigerators.converter.DetailConverter;
import org.kustova.refrigerators.entity.Detail;

import java.util.List;
import java.util.stream.Collectors;

@Builder
@NoArgsConstructor
@Data
public class DetailConverterImpl implements DetailConverter {
    @Override
    public DetailDTO toDTO(Detail detail) {
        return DetailDTO.builder()
                .id(detail.getId())
                .name(detail.getName())
                .price(detail.getPrice())
                .build();
    }

    @Override
    public List<DetailDTO> toListDto(List<Detail> details) {
        return details.stream().map(this::toDTO)
                .collect(Collectors.toList());
    }

    @Override
    public Detail toEntity(DetailDTO detailDTO) {
        return Detail.builder()
                .id(detailDTO.getId())
                .name(detailDTO.getName())
                .price(detailDTO.getPrice())
                .build();
    }
}
