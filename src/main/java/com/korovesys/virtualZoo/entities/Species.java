package com.korovesys.virtualZoo.entities;

import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Type;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import java.io.Serializable;
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
}
