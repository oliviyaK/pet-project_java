package org.kustova.refrigerators.Entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "clients")
public class Client implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "surname")
    private String surname;

    @Column(name = "address", nullable = false)
    private String address;

    @Column(name = "phone_number", nullable = false)
    private String phone;

    @Column(name = "client_comment", nullable = true)
    private String comment;

    @OneToMany(mappedBy = "client")
    private Set<Request> requestOfClient = new HashSet<>();

    @Override
    public String toString() {
        return "Client " +
                "id = " + id +
                ", name = " + name +
                ", surname = " + surname +
                ", address = " + address +
                ", phone = " + phone +
                ", comment = " + comment;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Client client = (Client) o;
        return id.equals(client.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
