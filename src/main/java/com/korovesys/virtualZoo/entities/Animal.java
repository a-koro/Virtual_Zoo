package com.korovesys.virtualZoo.entities;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Collections;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Getter
@Setter
@ToString
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
    @JsonBackReference
    private Species species;
    @ManyToMany
    @JoinTable(
            name = "animal_trick",
            joinColumns = { @JoinColumn(name = "animal_id")},
            inverseJoinColumns = { @JoinColumn(name = "trick_id")}
    )
    private List<Trick> tricks;

    public String doTrick() {
        Collections.shuffle(tricks);
        Optional<Trick> trick = tricks.stream().findAny();
        return trick.isPresent() ? trick.get().getName() : "None";
    }
}
