package org.kustova.refrigerators.Entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;


@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "requests")
public class Request implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "date")
    private LocalDate date;

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
    private Client client;

    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST}, fetch = FetchType.EAGER)
    @JoinTable(name = "requests_refrigerators",
            joinColumns = {@JoinColumn(name = "id_request")},
            inverseJoinColumns = {@JoinColumn(name = "id_refrigerator")})
    @Builder.Default
    private Set<Refrigerator> refrigerator = new HashSet<>();

    @Override
    public String toString() {
        return "Request{" +
                "id = " + id +
                ", date = " + date +
                ", requestType = " + requestType +
                ", finalDate = " + finalDate +
                ", comment = " + comment +
                ", price = " + price;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Request request = (Request) o;
        return id.equals(request.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
