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
@Table(name = "refrigerators")
public class Refrigerator implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "refrigerator_brand", nullable = false)
    private String brand;

    @Column(name = "brand_model")
    private String model;

    @Column(name = "refrigerator_comment")
    private String comment;


    @ManyToMany(mappedBy = "refrigerator")
    @ToString.Exclude
    @Builder.Default
    private Set<Request> request = new HashSet<>();

    @Override
    public String toString() {
        return "Refrigerator " +
                "id = " + id +
                ", brand = " + brand +
                ", model = " + model +
                ", comment = " + comment;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Refrigerator refrigerator = (Refrigerator) o;
        return id.equals(refrigerator.id);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id);
    }
}
