package org.kustova.refrigerators.DTO;

import lombok.*;
import org.kustova.refrigerators.Entity.Client;
import org.kustova.refrigerators.Entity.Refrigerator;

import java.util.HashSet;
import java.util.Set;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Getter
public class RequestDTO {
    private int id;
    private String date;
    private String requestType;
    private String finalDate;
    private String comment;
    private int price;
    private Client client;
    private Set<Refrigerator> refrigerator = new HashSet<>();
}
