package com.korovesys.virtualZoo.projections;

import org.springframework.beans.factory.annotation.Value;

import java.util.List;
import java.util.UUID;

public interface AnimalProjection {
    UUID getId();
    String getName();
    @Value("#{target.getSpecies().getName()}")
    String getSpecies();
    @Value("#{target.getTricks().![name]}")
    List<String> getTricks();
}
