package com.korovesys.virtualZoo.services;

import com.korovesys.virtualZoo.projections.SpeciesProjection;

import java.util.List;

public interface SpeciesServiceInterface {

    public List<SpeciesProjection> getAllSpecies();
}
