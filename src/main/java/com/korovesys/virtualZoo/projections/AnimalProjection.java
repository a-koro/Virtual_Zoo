package com.korovesys.virtualZoo.projections;

import org.springframework.beans.factory.annotation.Value;

import java.util.UUID;

public interface AnimalProjection {
    UUID getId();
    String getName();
    @Value("#{target.getSpecies().getName()}")
    String getSpeciesName();
}
