package com.korovesys.virtualZoo.entities;

import com.fasterxml.jackson.annotation.JsonManagedReference;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.io.Serializable;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
@Entity
public class Species implements Serializable {

    @Id
    @GeneratedValue
    @Type(type="uuid-char")
    @Column(name = "species_id")
    private UUID id;
    private String name;
    @ManyToMany
    @JoinTable(
            name = "species_trick",
            joinColumns = { @JoinColumn(name = "species_id")},
            inverseJoinColumns = { @JoinColumn(name = "trick_id")}
    )
    private List<Trick> tricks;
    @OneToMany(mappedBy = "species", fetch = FetchType.LAZY)
    @JsonManagedReference
    private List<Animal> animals;
}
