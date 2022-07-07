package org.kustova.refrigerators.DTO;

import lombok.*;

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
    private String requestOfClientDate;
    private String requestOfClientType;
}
