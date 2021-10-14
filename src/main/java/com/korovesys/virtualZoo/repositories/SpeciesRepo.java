package com.korovesys.virtualZoo.repositories;

import com.korovesys.virtualZoo.entities.Species;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.UUID;

public interface SpeciesRepo extends JpaRepository<Species, UUID> {
}
