package org.kustova.refrigerators.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.kustova.refrigerators.entity.Refrigerator;
import org.kustova.refrigerators.entity.Request;
@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class DetailDTO {
    private Integer id;
    private String name;
    private int price;
}
