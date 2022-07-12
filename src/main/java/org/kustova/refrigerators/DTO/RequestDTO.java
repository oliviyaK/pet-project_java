package org.kustova.refrigerators.DTO;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.kustova.refrigerators.entity.Client;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class RequestDTO {
    private int id;
    private String date;
    private String requestType;
    private String finalDate;
    private String comment;
    private int price;
    private Client client;

}
