package org.kustova.refrigerators.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor

public class ClientDTO {
    private Integer id;
    private String name;
    private String surname;
    private String address;
    private String phone;
    private String comment;
    private String requestOfClient;
}
