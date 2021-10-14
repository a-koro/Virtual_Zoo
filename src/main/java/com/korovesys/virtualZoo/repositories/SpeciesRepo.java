package com.korovesys.virtualZoo.repositories;

import com.korovesys.virtualZoo.entities.Species;
import com.korovesys.virtualZoo.projections.SpeciesProjection;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface SpeciesRepo extends JpaRepository<Species, UUID> {

    public List<SpeciesProjection> findBy();
}
