package org.kustova.refrigerators.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.kustova.refrigerators.entity.Detail;
import org.kustova.refrigerators.entity.Request;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder

public class RefrigeratorDTO {
    private Integer id;
    private String brand;
    private String model;
    private String comment;

}
