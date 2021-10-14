package com.korovesys.virtualZoo.projections;

import java.util.List;

public interface SpeciesProjection {
    String getName();
    List<AnimalProjection> getAnimals();
}
