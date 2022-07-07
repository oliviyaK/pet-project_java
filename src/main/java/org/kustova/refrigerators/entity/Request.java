package org.kustova.refrigerators.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.*;

@EqualsAndHashCode
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "requests")
public class Request implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "date")
    private String date;

    @Column(name = "type_of_request")
    private String requestType;

    @Column(name = "final_date")
    private String finalDate;

    @Column(name = "final_comment")
    private String comment;

    @Column(name = "price")
    private int price;

    @ManyToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinColumn(name = "client_id")
    @ToString.Exclude
    private Client client;

    @ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.EAGER)
    @JoinTable(name = "requests_refrigerators",
            joinColumns = {@JoinColumn(name = "id_request")},
            inverseJoinColumns = {@JoinColumn(name = "id_refrigerator")})
    @Builder.Default
    private Set<Refrigerator> refrigerator = new HashSet<>();

    @OneToMany(mappedBy = "request")
    @ToString.Exclude
    @Builder.Default
    private List<Detail> detailList = new ArrayList<>();


}
