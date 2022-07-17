package org.kustova.refrigerators.entity;

import lombok.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

@EqualsAndHashCode
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
@Table(name = "operator")
public class Operator implements Serializable {
    @Id
    @Column(name = "id")
    private Integer id;

    @Column(name = "operator_name")
    private String username;
    @Column(name = "password")
    private String password;

}
