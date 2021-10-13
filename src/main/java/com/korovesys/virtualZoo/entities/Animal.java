package com.korovesys.virtualZoo.entities;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;
import java.util.UUID;

@Getter
@Setter
@Entity
public class Animal implements Serializable {

    @Id
    @GeneratedValue
    @Type(type="uuid-char")
    @Column(name = "animal_id")
    private UUID id;
    private String name;
    @ManyToOne
    @JoinColumn(name = "species_id")
    private Species species;
}
