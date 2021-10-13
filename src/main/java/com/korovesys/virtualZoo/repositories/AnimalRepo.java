package com.korovesys.virtualZoo.repositories;

import com.korovesys.virtualZoo.entities.Animal;
import com.korovesys.virtualZoo.projections.AnimalProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface AnimalRepo extends JpaRepository<Animal, UUID> {

    public List<AnimalProjection> findBy();
}
