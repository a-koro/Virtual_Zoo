package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.entities.Species;
import com.korovesys.virtualZoo.projections.SpeciesProjection;

import java.util.List;
import java.util.Optional;

public interface SpeciesServiceInterface {

    public List<SpeciesProjection> getAllSpecies();

    public Optional<Species> findSpeciesByName(String name);
}
