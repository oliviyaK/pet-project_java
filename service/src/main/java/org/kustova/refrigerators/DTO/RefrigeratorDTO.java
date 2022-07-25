package org.kustova.refrigerators.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

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
